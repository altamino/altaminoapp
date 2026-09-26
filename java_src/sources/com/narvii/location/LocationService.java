package com.narvii.location;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.collection.LruCache;
import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.account.AccountService;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.URLFetch;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes2.dex */
public class LocationService implements LocationListener {
    public static final int CITY_LEVEL_RADIUS = 25000;
    public static long DEFAULT_EXPIRES = 600000;
    public static long DEFAULT_TIMEOUT = 10000;
    public static final int NEARBY_RADIUS = 100000;
    public static boolean SIMULATE_TIMEOUT;
    static Location lastLocation;
    static ReverseGeocoder lastSuccessGeocoder;
    static final ArrayList<ReverseGeocoder> reverseGeocoders;
    NVContext context;
    boolean disposed;
    LocationManager locationManager;
    boolean started;
    static final Handler handler = new Handler(Looper.getMainLooper());
    static final LruCache<String, ReadableAddress> reverseGeocodingCache = new LruCache<>(64);
    final ArrayList<Task> tasks_ = new ArrayList<>();
    final ArrayList<Task> tmp = new ArrayList<>();
    private final Runnable checkpoint = new Runnable() { // from class: com.narvii.location.LocationService.1
        @Override // java.lang.Runnable
        public void run() {
            long jCurrentTimeMillis = System.currentTimeMillis();
            LocationService.this.tmp.clear();
            LocationService locationService = LocationService.this;
            locationService.tmp.addAll(locationService.tasks_);
            Iterator<Task> it = LocationService.this.tmp.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                Task next = it.next();
                if (next.minTime <= jCurrentTimeMillis && next.maxTime < jCurrentTimeMillis) {
                    it.remove();
                    i10++;
                    Callback<GPSCoordinate> callback = next.callback;
                    if (callback != null) {
                        callback.call(null);
                    }
                }
            }
            if (i10 > 0) {
                Log.i("LocationService.checkpoint, timeouts=" + i10);
                LocationService locationService2 = LocationService.this;
                locationService2.tasks_.retainAll(locationService2.tmp);
            }
            if (LocationService.this.tasks_.isEmpty()) {
                LocationService.this.stopLocating();
            }
        }
    };

    static class BaiduAddress implements ReadableAddress {
        String city;
        Context context;
        String district;
        String formattedAddress;
        String province;
        String street;

        @Override // com.narvii.location.ReadableAddress
        public String getCityLevelAddressText() {
            String str = this.city;
            if (TextUtils.isEmpty(str)) {
                str = this.province;
            }
            if (TextUtils.isEmpty(str)) {
                str = "中国";
            }
            String str2 = this.district;
            if (TextUtils.isEmpty(str2)) {
                str2 = this.street;
            }
            if (TextUtils.isEmpty(str2)) {
                str2 = this.formattedAddress;
            }
            return TextUtils.isEmpty(str2) ? str : this.context.getString(R.string.address_output_string, str2, str);
        }

        public BaiduAddress(Context context) {
            this.context = context;
        }
    }

    public interface GeocodeResultListener {
        void onReverseGeocoding(GPSCoordinate gPSCoordinate, ReadableAddress readableAddress);
    }

    private static class GoogleAddress implements ReadableAddress {
        Address address;
        Context context;

        @Override // com.narvii.location.ReadableAddress
        public String getCityLevelAddressText() {
            String locality = this.address.getLocality();
            if (TextUtils.isEmpty(locality)) {
                locality = this.address.getSubLocality();
            }
            if (TextUtils.isEmpty(locality)) {
                locality = this.address.getAdminArea();
            }
            if (TextUtils.isEmpty(locality)) {
                locality = this.address.getSubAdminArea();
            }
            if (!TextUtils.isEmpty(locality)) {
                return TextUtils.isEmpty(this.address.getCountryName()) ? locality : this.context.getString(R.string.address_output_string, locality, this.address.getCountryName());
            }
            if (this.address.getMaxAddressLineIndex() > 0) {
                Address address = this.address;
                return address.getAddressLine(address.getMaxAddressLineIndex() - 1);
            }
            if (this.address.getAddressLine(0) != null) {
                return this.address.getAddressLine(0);
            }
            return this.address.getCountryName() != null ? this.address.getCountryName() : "";
        }

        public GoogleAddress(Context context, Address address) {
            this.context = context;
            this.address = address;
        }
    }

    interface ReverseGeocoder {
        boolean accept(GPSCoordinate gPSCoordinate);

        ReadableAddress reverseGeocode(GPSCoordinate gPSCoordinate);
    }

    public GPSCoordinate getCachedCoordinate() {
        return getCachedCoordinate(DEFAULT_EXPIRES);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i10, Bundle bundle) {
    }

    public boolean requireCoordinate(Callback<GPSCoordinate> callback) {
        return requireCoordinate(callback, 0L, DEFAULT_TIMEOUT);
    }

    public void warmup(long j6, long j10) {
        requireCoordinate(null, j6, j10);
    }

    static class BaiduGeocoder implements ReverseGeocoder {
        BaiduGeocoder() {
        }

        @Override // com.narvii.location.LocationService.ReverseGeocoder
        public boolean accept(GPSCoordinate gPSCoordinate) {
            if (gPSCoordinate.latitude() > 18.0d && gPSCoordinate.latitude() < 53.0d && gPSCoordinate.longitude() > 73.0d && gPSCoordinate.longitude() < 135.0d) {
                return true;
            }
            return false;
        }

        @Override // com.narvii.location.LocationService.ReverseGeocoder
        public ReadableAddress reverseGeocode(GPSCoordinate gPSCoordinate) {
            NVApplication nVApplicationInstance = NVApplication.instance();
            try {
                JsonNode jsonNode = new URLFetch().getJsonNode("http://api.map.baidu.com/geocoder/v2/?ak=" + nVApplicationInstance.getString(R.string.baidu_map_key) + "&coordtype=wgs84ll&location=" + gPSCoordinate.latitude() + b.COMMA + gPSCoordinate.longitude() + "&output=json&pois=0");
                if (jsonNode != null) {
                    try {
                        if (jsonNode.get(NotificationCompat.CATEGORY_STATUS).intValue() == 0) {
                            JsonNode jsonNode2 = jsonNode.get("result");
                            BaiduAddress baiduAddress = new BaiduAddress(nVApplicationInstance);
                            baiduAddress.formattedAddress = jsonNode2.get("formatted_address").textValue();
                            JsonNode jsonNode3 = jsonNode2.get("addressComponent");
                            baiduAddress.city = jsonNode3.get("city").textValue();
                            baiduAddress.district = jsonNode3.get("district").textValue();
                            baiduAddress.province = jsonNode3.get("province").textValue();
                            baiduAddress.street = jsonNode3.get("street").textValue();
                            if (!TextUtils.isEmpty(baiduAddress.province) && !TextUtils.isEmpty(baiduAddress.formattedAddress)) {
                                return baiduAddress;
                            }
                        }
                    } catch (Exception e) {
                        Log.w("fail to reverse geocode from baidu " + jsonNode, e);
                    }
                } else {
                    Log.w("fail to reverse geocode from baidu");
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    static class GoogleGeocoder implements ReverseGeocoder {
        @Override // com.narvii.location.LocationService.ReverseGeocoder
        public boolean accept(GPSCoordinate gPSCoordinate) {
            return true;
        }

        GoogleGeocoder() {
        }

        @Override // com.narvii.location.LocationService.ReverseGeocoder
        public ReadableAddress reverseGeocode(GPSCoordinate gPSCoordinate) {
            NVApplication nVApplicationInstance = NVApplication.instance();
            try {
                List<Address> fromLocation = new Geocoder(nVApplicationInstance, Locale.getDefault()).getFromLocation(gPSCoordinate.latitude(), gPSCoordinate.longitude(), 1);
                if (fromLocation != null && fromLocation.size() > 0) {
                    GoogleAddress googleAddress = new GoogleAddress(nVApplicationInstance, fromLocation.get(0));
                    googleAddress.getCityLevelAddressText();
                    return googleAddress;
                }
                return null;
            } catch (Exception e) {
                Log.w("fail to reverse geocoding " + gPSCoordinate, e);
                return null;
            }
        }
    }

    private static class Task {
        Callback<GPSCoordinate> callback;
        long maxTime;
        long minTime;

        public Task(Callback<GPSCoordinate> callback, long j6, long j10) {
            this.callback = callback;
            this.minTime = j6;
            this.maxTime = j10;
        }
    }

    static {
        ArrayList<ReverseGeocoder> arrayList = new ArrayList<>();
        reverseGeocoders = arrayList;
        arrayList.add(new GoogleGeocoder());
        arrayList.add(new BaiduGeocoder());
    }

    private List<String> availableProviders() {
        List<String> providers = this.locationManager.getProviders(true);
        if (!providers.contains("passive")) {
            return providers;
        }
        ArrayList arrayList = new ArrayList(providers);
        arrayList.remove("passive");
        return arrayList;
    }

    private Location getLastKnownLocation(long j6) {
        Location location = null;
        if (SIMULATE_TIMEOUT) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        Iterator<String> it = this.locationManager.getAllProviders().iterator();
        while (it.hasNext()) {
            try {
                Location lastKnownLocation = this.locationManager.getLastKnownLocation(it.next());
                if (lastKnownLocation != null) {
                    long time = jCurrentTimeMillis - lastKnownLocation.getTime();
                    if (j6 <= 0 || time < j6) {
                        if (location != null) {
                            if (j6 <= 0) {
                                if (lastKnownLocation.getTime() > location.getTime()) {
                                }
                            } else if (lastKnownLocation.getAccuracy() < location.getAccuracy()) {
                            }
                        }
                        location = lastKnownLocation;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return location;
    }

    private boolean startLocating() {
        if (this.started) {
            return true;
        }
        Log.i("LocationService.startLocating");
        List<String> listAvailableProviders = availableProviders();
        if (listAvailableProviders.isEmpty()) {
            return false;
        }
        Iterator<String> it = listAvailableProviders.iterator();
        while (it.hasNext()) {
            try {
                this.locationManager.requestLocationUpdates(it.next(), 0L, 0.0f, this, Looper.getMainLooper());
            } catch (Exception unused) {
            }
        }
        this.started = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopLocating() {
        if (this.started) {
            Log.i("LocationService.stopLocating");
            try {
                this.locationManager.removeUpdates(this);
            } catch (Exception unused) {
            }
            this.started = false;
        }
    }

    public void abort(Callback<GPSCoordinate> callback) {
        Iterator<Task> it = this.tasks_.iterator();
        while (it.hasNext()) {
            if (it.next().callback == callback) {
                it.remove();
            }
        }
        if (this.tasks_.isEmpty()) {
            stopLocating();
        }
    }

    public void dispose() {
        this.tasks_.clear();
        handler.removeCallbacks(this.checkpoint);
        stopLocating();
        this.disposed = true;
    }

    public GPSCoordinate getCachedCoordinate(long j6) {
        if (SIMULATE_TIMEOUT) {
            return null;
        }
        Location lastKnownLocation = getLastKnownLocation(j6);
        if (lastKnownLocation != null) {
            lastLocation = lastKnownLocation;
            return new GPSCoordinate(lastKnownLocation);
        }
        if (lastLocation != null) {
            long jCurrentTimeMillis = System.currentTimeMillis() - lastLocation.getTime();
            if (j6 <= 0 || jCurrentTimeMillis < j6) {
                return new GPSCoordinate(lastLocation);
            }
        }
        return null;
    }

    public ReadableAddress getCachedReverseGeocoding(GPSCoordinate gPSCoordinate) {
        return reverseGeocodingCache.get(gPSCoordinate.latitudeE6() + "," + gPSCoordinate.longitudeE6());
    }

    public GPSCoordinate getNearbyLocation(boolean z6) {
        User userProfile;
        int i10;
        int i11;
        GPSCoordinate cachedCoordinate = getCachedCoordinate(0L);
        GPSCoordinate gPSCoordinateRandomInRadius = null;
        if (!z6) {
            if (cachedCoordinate == null) {
                return null;
            }
            return cachedCoordinate.randomInRadius(25000);
        }
        AccountService accountService = (AccountService) this.context.getService("account");
        SharedPreferences prefs = accountService.getPrefs();
        int i12 = prefs.getInt("cachedNearbyLatitude", 0);
        int i13 = prefs.getInt("cachedNearbyLongitude", 0);
        if ((i12 == 0 || i13 == 0) && (userProfile = accountService.getUserProfile()) != null && (i10 = userProfile.latitude) != 0 && (i11 = userProfile.longitude) != 0) {
            i13 = i11;
            i12 = i10;
        }
        if (i12 != 0 && i13 != 0) {
            GPSCoordinate gPSCoordinateCreate = GPSCoordinate.create(i12, i13);
            if (cachedCoordinate == null || gPSCoordinateCreate.distanceTo(cachedCoordinate) < 100000.0d) {
                gPSCoordinateRandomInRadius = gPSCoordinateCreate;
            }
        }
        if (gPSCoordinateRandomInRadius == null && cachedCoordinate != null) {
            gPSCoordinateRandomInRadius = cachedCoordinate.randomInRadius(25000);
        }
        if (gPSCoordinateRandomInRadius != null) {
            prefs.edit().putInt("cachedNearbyLatitude", gPSCoordinateRandomInRadius.latitudeE6()).putInt("cachedNearbyLongitude", gPSCoordinateRandomInRadius.longitudeE6()).apply();
        }
        return gPSCoordinateRandomInRadius;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (SIMULATE_TIMEOUT) {
            return;
        }
        lastLocation = location;
        GPSCoordinate gPSCoordinate = new GPSCoordinate(location);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.tmp.clear();
        this.tmp.addAll(this.tasks_);
        Iterator<Task> it = this.tmp.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Task next = it.next();
            if (next.minTime <= jCurrentTimeMillis) {
                it.remove();
                i10++;
                Callback<GPSCoordinate> callback = next.callback;
                if (callback != null) {
                    callback.call(gPSCoordinate);
                }
            } else if (next.callback == null) {
                next.maxTime = 0L;
            }
        }
        Log.i("LocationService.onLocationChanged, callbacks=" + i10);
        if (i10 > 0) {
            this.tasks_.retainAll(this.tmp);
        }
        if (this.tasks_.isEmpty()) {
            stopLocating();
        }
    }

    public boolean requireCoordinate(Callback<GPSCoordinate> callback, long j6) {
        return requireCoordinate(callback, 0L, j6);
    }

    public void reverseGeocoding(final GPSCoordinate gPSCoordinate, final GeocodeResultListener geocodeResultListener) {
        final String str = gPSCoordinate.latitudeE6() + "," + gPSCoordinate.longitudeE6();
        ReadableAddress readableAddress = reverseGeocodingCache.get(str);
        if (readableAddress == null) {
            new Thread() { // from class: com.narvii.location.LocationService.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    final ReadableAddress readableAddressReverseGeocode = LocationService.reverseGeocodingCache.get(str);
                    if (readableAddressReverseGeocode == null) {
                        ArrayList<ReverseGeocoder> arrayList = new ArrayList(LocationService.reverseGeocoders);
                        ReverseGeocoder reverseGeocoder = LocationService.lastSuccessGeocoder;
                        if (reverseGeocoder != null && arrayList.get(0) != reverseGeocoder) {
                            arrayList.remove(reverseGeocoder);
                            arrayList.add(0, reverseGeocoder);
                        }
                        for (ReverseGeocoder reverseGeocoder2 : arrayList) {
                            if (LocationService.this.disposed) {
                                break;
                            }
                            readableAddressReverseGeocode = reverseGeocoder2.reverseGeocode(gPSCoordinate);
                            if (readableAddressReverseGeocode != null) {
                                LocationService.reverseGeocodingCache.put(str, readableAddressReverseGeocode);
                                LocationService.lastSuccessGeocoder = reverseGeocoder2;
                                break;
                            }
                        }
                    }
                    if (LocationService.this.disposed) {
                        return;
                    }
                    Utils.post(new Runnable() { // from class: com.narvii.location.LocationService.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GeocodeResultListener geocodeResultListener2;
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            if (LocationService.this.disposed || (geocodeResultListener2 = geocodeResultListener) == null) {
                                return;
                            }
                            geocodeResultListener2.onReverseGeocoding(gPSCoordinate, readableAddressReverseGeocode);
                        }
                    });
                }
            }.start();
        } else if (geocodeResultListener != null) {
            geocodeResultListener.onReverseGeocoding(gPSCoordinate, readableAddress);
        }
    }

    public LocationService(NVContext nVContext) {
        this.context = nVContext;
        this.locationManager = (LocationManager) nVContext.getContext().getSystemService("location");
    }

    public boolean isLocationManagerAvailable() {
        return !availableProviders().isEmpty();
    }

    public boolean requireCoordinate(Callback<GPSCoordinate> callback, long j6, long j10) {
        if (!startLocating()) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.tasks_.add(new Task(callback, j6 > 0 ? jCurrentTimeMillis + j6 : 0L, jCurrentTimeMillis + j10));
        if (j6 > 0) {
            handler.postDelayed(this.checkpoint, j6 + 100);
        }
        handler.postDelayed(this.checkpoint, j10);
        return true;
    }
}
