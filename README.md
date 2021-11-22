# RequestAdapter

Request adapter for URL requests from "MovieLister" demo app (Swift for Good book, a chapter by Ben Scheirman)

## The code is taken from:

[Movie Lister](https://github.com/subdigital/MovieLister)


## Usage 

### 1. Implement the desired functionality inside the adapter protocol methods

```swift
struct UserAuthAdapter : RequestAdapter {
  func onResponse(response: URLResponse?, data: Data?) {
    if let urlResponse = response as? HTTPURLResponse {
      UserAuthData.saveToRepositoryFrom(urlResponse: urlResponse)
    }
  }
}
```

### 2. Add the adapters to your `APIClient` as a property

```swift
  private var adapters: [RequestAdapter]
```

### 3. Call the adapters form the implementation of the `APIClient`

```swift
  self.adapters.forEach { $0.beforeSend(dataRequest.request) }
```

or

```swift
  guard let data = data.data else {
    let error = data.error ?? AFError.explicitlyCancelled
    self.adapters.forEach { $0.onError(request: dataRequest.request, error: error) }
```


