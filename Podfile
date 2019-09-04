project 'Artable.xcodeproj'

# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

def shared_pods
  pod 'Firebase/Core'
  pod 'Firebase/Auth'
  pod 'IQKeyboardManagerSwift'
  pod 'Firebase/Firestore'
  pod 'Firebase/Storage'
  pod 'Kingfisher', '~> 4.0'
  pod 'CodableFirebase'
end

target 'Artable' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  shared_pods
  pod 'Stripe'
  pod 'Alamofire'
  # Pods for Artable

  target 'ArtableAdminTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ArtableAdminUITests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ArtableTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ArtableUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

target 'ArtableAdmin' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  shared_pods
  pod 'CropViewController'
  # Pods for ArtableAdmin

end