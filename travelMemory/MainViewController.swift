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
        print("longitue: \(longitude)")
        
        // 네이버지도를 내위치 주변으로 보여지게끔 설정
        let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: latitude, lng: longitude), zoomTo: 16)
        naverMapView.moveCamera(cameraUpdate)
        cameraUpdate.animation = .easeIn
    }
}
