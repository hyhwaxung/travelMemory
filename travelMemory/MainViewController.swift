//
//  MainViewController.swift
//  travelMemory
//
//  Created by 정현화 on 2023/07/31.
//

import UIKit
import NMapsMap
import CoreLocation

class MainViewController: UIViewController {

    var locationManager = CLLocationManager()
    
    private lazy var naverMapView: NMFMapView = {
        let mapView = NMFMapView(frame: view.frame)
        return mapView
    }()
    
    private var postList: [Post] = [
        Post(content: "내용",
             viewCount: 0,
             placeTitle: "이디야 동덕여대점",
             latitude: 37.603502,
             longitude: 127.042718,
             dateTime: "20230817")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(naverMapView)
        naverMapView.translatesAutoresizingMaskIntoConstraints = false
        naverMapView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 50).isActive = true
        naverMapView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        naverMapView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        naverMapView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true

        setLocationData()
        loadPostList()
    }
    
    func setLocationData() {
        // locationManager 설정
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        // 위경도 가져오기
        let latitude = locationManager.location?.coordinate.latitude ?? 0
        let longitude = locationManager.location?.coordinate.longitude ?? 0
        
        print("latitude: \(latitude)")
        print("longitude: \(longitude)")
        
        // 네이버지도를 내위치 주변으로 보여지게끔 설정
        let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: latitude, lng: longitude), zoomTo: 16)
        naverMapView.moveCamera(cameraUpdate)
        cameraUpdate.animation = .easeIn
    }
    
    func loadPostList() {
        
        for post in self.postList {
            let latitude = post.latitude
            let longitude = post.longitude
            
            let marker = NMFMarker()
            marker.position = NMGLatLng(lat: latitude, lng: longitude)
            marker.mapView = self.naverMapView
        }
    }
}
