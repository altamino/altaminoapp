package com.narvii.location;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.NotificationCompat;
import android.support.v4.util.LruCache;
import android.text.TextUtils;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.URLFetch;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class LocationService implements LocationListener {
    public static final int CITY_LEVEL_RADIUS = 25000;
    public static long DEFAULT_EXPIRES = 600000;
    public static long DEFAULT_TIMEOUT = 10000;
    public static final int NEARBY_RADIUS = 100000;
    public static boolean SIMULATE_TIMEOUT;
    static Location lastLocation;
    static ReverseGeocoder lastSuccessGeocoder;
    NVContext context;
    boolean disposed;
    LocationManager locationManager;
    boolean started;
    static final Handler handler = new Handler(Looper.getMainLooper());
    static final LruCache<String, ReadableAddress> reverseGeocodingCache = new LruCache<>(64);
    static final ArrayList<ReverseGeocoder> reverseGeocoders = new ArrayList<>();
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
            int i = 0;
            while (it.hasNext()) {
                Task next = it.next();
                if (next.minTime <= jCurrentTimeMillis && next.maxTime < jCurrentTimeMillis) {
                    it.remove();
                    i++;
                    Callback<GPSCoordinate> callback = next.callback;
                    if (callback != null) {
                        callback.call(null);
                    }
                }
            }
            if (i > 0) {
                Log.i("LocationService.checkpoint, timeouts=" + i);
                LocationService locationService2 = LocationService.this;
                locationService2.tasks_.retainAll(locationService2.tmp);
            }
            if (LocationService.this.tasks_.isEmpty()) {
                LocationService.this.stopLocating();
            }
        }
    };

    public interface GeocodeResultListener {
        void onReverseGeocoding(GPSCoordinate gPSCoordinate, ReadableAddress readableAddress);
    }

    interface ReverseGeocoder {
        boolean accept(GPSCoordinate gPSCoordinate);

        ReadableAddress reverseGeocode(GPSCoordinate gPSCoordinate);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
    }

    private static class Task {
        Callback<GPSCoordinate> callback;
        long maxTime;
        long minTime;

        public Task(Callback<GPSCoordinate> callback, long j, long j2) {
            this.callback = callback;
            this.minTime = j;
            this.maxTime = j2;
        }
    }

    static {
        reverseGeocoders.add(new GoogleGeocoder());
        reverseGeocoders.add(new BaiduGeocoder());
    }

    public LocationService(NVContext nVContext) {
        this.context = nVContext;
        this.locationManager = (LocationManager) nVContext.getContext().getSystemService("location");
    }

    public boolean requireCoordinate(Callback<GPSCoordinate> callback) {
        return requireCoordinate(callback, 0L, DEFAULT_TIMEOUT);
    }

    public boolean requireCoordinate(Callback<GPSCoordinate> callback, long j) {
        return requireCoordinate(callback, 0L, j);
    }

    public boolean requireCoordinate(Callback<GPSCoordinate> callback, long j, long j2) {
        if (!startLocating()) {
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.tasks_.add(new Task(callback, j > 0 ? jCurrentTimeMillis + j : 0L, jCurrentTimeMillis + j2));
        if (j > 0) {
            handler.postDelayed(this.checkpoint, j + 100);
        }
        handler.postDelayed(this.checkpoint, j2);
        return true;
    }

    public GPSCoordinate getCachedCoordinate() {
        return getCachedCoordinate(DEFAULT_EXPIRES);
    }

    public GPSCoordinate getCachedCoordinate(long j) {
        if (SIMULATE_TIMEOUT) {
            return null;
        }
        Location lastKnownLocation = getLastKnownLocation(j);
        if (lastKnownLocation != null) {
            lastLocation = lastKnownLocation;
            return new GPSCoordinate(lastKnownLocation);
        }
        if (lastLocation != null) {
            long jCurrentTimeMillis = System.currentTimeMillis() - lastLocation.getTime();
            if (j <= 0 || jCurrentTimeMillis < j) {
                return new GPSCoordinate(lastLocation);
            }
        }
        return null;
    }

    public void warmup(long j, long j2) {
        requireCoordinate(null, j, j2);
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

    public boolean isLocationManagerAvailable() {
        return !availableProviders().isEmpty();
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

    private Location getLastKnownLocation(long j) {
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
                    if (j <= 0 || time < j) {
                        if (location != null) {
                            if (j <= 0) {
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

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        if (SIMULATE_TIMEOUT) {
            return;
        }
        lastLocation = location;
        int i = 0;
        GPSCoordinate gPSCoordinate = new GPSCoordinate(location);
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.tmp.clear();
        this.tmp.addAll(this.tasks_);
        Iterator<Task> it = this.tmp.iterator();
        while (it.hasNext()) {
            Task next = it.next();
            if (next.minTime > jCurrentTimeMillis) {
                if (next.callback == null) {
                    next.maxTime = 0L;
                }
            } else {
                it.remove();
                i++;
                Callback<GPSCoordinate> callback = next.callback;
                if (callback != null) {
                    callback.call(gPSCoordinate);
                }
            }
        }
        Log.i("LocationService.onLocationChanged, callbacks=" + i);
        if (i > 0) {
            this.tasks_.retainAll(this.tmp);
        }
        if (this.tasks_.isEmpty()) {
            stopLocating();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.narvii.location.GPSCoordinate getNearbyLocation(boolean r13) {
        /*
            r12 = this;
            r0 = 0
            com.narvii.location.GPSCoordinate r0 = r12.getCachedCoordinate(r0)
            r1 = 0
            r2 = 25000(0x61a8, float:3.5032E-41)
            if (r13 != 0) goto L13
            if (r0 != 0) goto Le
            goto L12
        Le:
            com.narvii.location.GPSCoordinate r1 = r0.randomInRadius(r2)
        L12:
            return r1
        L13:
            com.narvii.app.NVContext r13 = r12.context
            java.lang.String r3 = "account"
            java.lang.Object r13 = r13.getService(r3)
            com.narvii.account.AccountService r13 = (com.narvii.account.AccountService) r13
            android.content.SharedPreferences r3 = r13.getPrefs()
            r4 = 0
            java.lang.String r5 = "cachedNearbyLatitude"
            int r6 = r3.getInt(r5, r4)
            java.lang.String r7 = "cachedNearbyLongitude"
            int r4 = r3.getInt(r7, r4)
            if (r6 == 0) goto L32
            if (r4 != 0) goto L42
        L32:
            com.narvii.model.User r13 = r13.getUserProfile()
            if (r13 == 0) goto L42
            int r8 = r13.latitude
            if (r8 == 0) goto L42
            int r13 = r13.longitude
            if (r13 == 0) goto L42
            r6 = r8
            goto L43
        L42:
            r13 = r4
        L43:
            if (r6 == 0) goto L5b
            if (r13 == 0) goto L5b
            com.narvii.location.GPSCoordinate r13 = com.narvii.location.GPSCoordinate.create(r6, r13)
            if (r0 == 0) goto L5c
            double r8 = r13.distanceTo(r0)
            r10 = 4681608360884174848(0x40f86a0000000000, double:100000.0)
            int r4 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r4 >= 0) goto L5b
            goto L5c
        L5b:
            r13 = r1
        L5c:
            if (r13 != 0) goto L64
            if (r0 == 0) goto L64
            com.narvii.location.GPSCoordinate r13 = r0.randomInRadius(r2)
        L64:
            if (r13 == 0) goto L7d
            android.content.SharedPreferences$Editor r0 = r3.edit()
            int r1 = r13.latitudeE6()
            android.content.SharedPreferences$Editor r0 = r0.putInt(r5, r1)
            int r1 = r13.longitudeE6()
            android.content.SharedPreferences$Editor r0 = r0.putInt(r7, r1)
            r0.apply()
        L7d:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.location.LocationService.getNearbyLocation(boolean):com.narvii.location.GPSCoordinate");
    }

    public ReadableAddress getCachedReverseGeocoding(GPSCoordinate gPSCoordinate) {
        return reverseGeocodingCache.get(gPSCoordinate.latitudeE6() + "," + gPSCoordinate.longitudeE6());
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
                        ArrayList arrayList = new ArrayList(LocationService.reverseGeocoders);
                        ReverseGeocoder reverseGeocoder = LocationService.lastSuccessGeocoder;
                        if (reverseGeocoder != null && arrayList.get(0) != reverseGeocoder) {
                            arrayList.remove(reverseGeocoder);
                            arrayList.add(0, reverseGeocoder);
                        }
                        Iterator it = arrayList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            ReverseGeocoder reverseGeocoder2 = (ReverseGeocoder) it.next();
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

    private static class GoogleAddress implements ReadableAddress {
        Address address;
        Context context;

        public GoogleAddress(Context context, Address address) {
            this.context = context;
            this.address = address;
        }

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
    }

    static class GoogleGeocoder implements ReverseGeocoder {
        @Override // com.narvii.location.LocationService.ReverseGeocoder
        public boolean accept(GPSCoordinate gPSCoordinate) {
            return true;
        }

        GoogleGeocoder() {
        }

        @Override // com.narvii.location.LocationService.ReverseGeocoder
        public ReadableAddress reverseGeocode(GPSCoordinate gPSCoordinate) throws IOException {
            NVApplication nVApplicationInstance = NVApplication.instance();
            try {
                List<Address> fromLocation = new Geocoder(nVApplicationInstance, Locale.getDefault()).getFromLocation(gPSCoordinate.latitude(), gPSCoordinate.longitude(), 1);
                if (fromLocation == null || fromLocation.size() <= 0) {
                    return null;
                }
                GoogleAddress googleAddress = new GoogleAddress(nVApplicationInstance, fromLocation.get(0));
                googleAddress.getCityLevelAddressText();
                return googleAddress;
            } catch (Exception e) {
                Log.w("fail to reverse geocoding " + gPSCoordinate, e);
                return null;
            }
        }
    }

    static class BaiduGeocoder implements ReverseGeocoder {
        BaiduGeocoder() {
        }

        @Override // com.narvii.location.LocationService.ReverseGeocoder
        public boolean accept(GPSCoordinate gPSCoordinate) {
            return gPSCoordinate.latitude() > 18.0d && gPSCoordinate.latitude() < 53.0d && gPSCoordinate.longitude() > 73.0d && gPSCoordinate.longitude() < 135.0d;
        }

        @Override // com.narvii.location.LocationService.ReverseGeocoder
        public ReadableAddress reverseGeocode(GPSCoordinate gPSCoordinate) {
            NVApplication nVApplicationInstance = NVApplication.instance();
            try {
                JsonNode jsonNode = new URLFetch().getJsonNode("http://api.map.baidu.com/geocoder/v2/?ak=" + nVApplicationInstance.getString(R.string.baidu_map_key) + "&coordtype=wgs84ll&location=" + gPSCoordinate.latitude() + ',' + gPSCoordinate.longitude() + "&output=json&pois=0");
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
                            if (!TextUtils.isEmpty(baiduAddress.province)) {
                                if (!TextUtils.isEmpty(baiduAddress.formattedAddress)) {
                                    return baiduAddress;
                                }
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

    static class BaiduAddress implements ReadableAddress {
        String city;
        Context context;
        String district;
        String formattedAddress;
        String province;
        String street;

        public BaiduAddress(Context context) {
            this.context = context;
        }

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
    }
}
