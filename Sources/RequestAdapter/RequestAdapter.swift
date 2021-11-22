//
//  RequestAdapter.swift
//  TVShowsMMJ
//
//  Created by iMacPro on 17.11.2021..
//

import Foundation

// MARK: - Adapter Protocol -

public protocol RequestAdapter {
  func modify(_ request: inout URLRequest)
  func beforeSend(_ request: URLRequest?)
  func onResponse(response: URLResponse?, data: Data?)
  func onError(request: URLRequest?, error: Error)
  func onSuccess(request: URLRequest?)
}

// MARK: - Default (empty) Implementations for Adapter Protocol Methods (for compiler to stay silent) -

public extension RequestAdapter {
  func modify(_ request: inout URLRequest) { }
  func beforeSend(_ request: URLRequest?) { }
  func onResponse(response: URLResponse?, data: Data?) { }
  func onError(request: URLRequest?, error: Error) { }
  func onSuccess(request: URLRequest?) { }
}
