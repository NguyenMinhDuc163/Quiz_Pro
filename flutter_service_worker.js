'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.js": "41f351988a21049bb882aab569ad65a4",
"index.html": "9ca4d936d770ef3810a26f805f3c2e7d",
"/": "9ca4d936d770ef3810a26f805f3c2e7d",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"manifest.json": "f7e216046ba51c0e0adeced2695be689",
"version.json": "c83edc62b192bf014ff0ac79e968f4ce",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/fonts/MaterialIcons-Regular.otf": "29ddd6bd696077f66108bee0c7e82384",
"assets/NOTICES": "f97426d902a16c6eb1f32f272be4635b",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/assets/icons/icon_app.png": "89a59f713e86df2f39db9e0a5b90df6e",
"assets/assets/icons/quizzes.svg": "b74e16908b334ddcb69988f10ce7c6b7",
"assets/assets/icons/ico_rectangle_pink.png": "517e4c24ee9e8a1649180e8912939a7f",
"assets/assets/icons/ico_user.svg": "7a8300e0510f2a2481f8dcba321547e4",
"assets/assets/icons/friends.svg": "5a6bd89692faad41a478ac0c95b3448e",
"assets/assets/icons/ico_home.svg": "8cf18e34ea78cf50cc6417c84aa24c2a",
"assets/assets/icons/leaderboard.svg": "51d9c553dea3712dc4398857ddb63b14",
"assets/assets/icons/friends.png": "9c99f06c51da663c9d19e49f4b1d7dda",
"assets/assets/icons/ico_card_1.svg": "daff764569f71638bbe097d04f27bbaa",
"assets/assets/icons/leaderboard.png": "6d73da43b00be5dd6acd4005ed7f8712",
"assets/assets/icons/ico_rectangle_blue.png": "cfcd754d4eb5287d5f1b2337119c17a5",
"assets/assets/icons/ico_logo.png": "f56c15db9aa1b376608043c10aedff5a",
"assets/assets/icons/ico_america.png": "b4244461cb70242051d845a4aed64266",
"assets/assets/icons/ico_card_3.svg": "e2d6a6827baee7d713c8d2655e130d9d",
"assets/assets/icons/ico_vn.png": "3ac1a6235328626eebeb91f8464f0414",
"assets/assets/icons/ico_card_2.svg": "93d0e2fe555fcea03044b9b648bb75b5",
"assets/assets/images/slide1.png": "f287b51454ee17242c8be95fc8204003",
"assets/assets/images/slide2.png": "be286c401c15fa3b01b011654fae1143",
"assets/assets/images/googleSymbol.png": "f0927e0cfc2844e13bfc2d68d39e90e1",
"assets/assets/images/student.png": "b1cf35b0c5ba9be293ed13399c21860c",
"assets/assets/images/onboarding_2.png": "0512ebde14e571f89b48c173bade73b9",
"assets/assets/images/onboarding_1.png": "206f2b90b80f326411e620a115e1be01",
"assets/assets/images/teacher.png": "f6a1ae41e34ed0774da0117b60101328",
"assets/assets/images/slide3.png": "a64d9c5fb1e4b4fca673878d1b19ee12",
"assets/assets/images/onboarding_3.png": "ade952e5f62a2d16f4d3a64f69d2f2e9",
"assets/assets/images/background_card.png": "a45d9be1182082c56fd6da4969ede44f",
"assets/assets/images/quizz.png": "434447204e2a87ec463db6f8481225a4",
"assets/assets/translations/vi-VN.json": "33bd4f1795c9674a9a49903065d2bd0d",
"assets/assets/translations/en-US.json": "29e0bd6e8e9fa76cf8527245502cd151",
"assets/AssetManifest.json": "b7eaa81a26c977844a231d8304db4a63",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "e011077c9ffffcd14934cedff982cf21",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/AssetManifest.bin.json": "231f2f9d4e15848164ce19f544191ffe",
"assets/AssetManifest.bin": "5de2ec852b34bf53c573d2cc545cc249",
"flutter_bootstrap.js": "7f4705b7b87f1aef453a49bff36273a4",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
