package com.narvii.account;

import android.os.Bundle;
import com.narvii.app.NVFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.ReadableAddress;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes7.dex */
public class SignupLocationFragment extends NVFragment implements Callback<GPSCoordinate>, LocationService.GeocodeResultListener {
    String address;
    boolean failed;
    GPSCoordinate location;
    LocationService ls;

    @Override // com.narvii.util.Callback
    public void call(GPSCoordinate gPSCoordinate) {
        GPSCoordinate nearbyLocation = this.ls.getNearbyLocation(false);
        this.location = nearbyLocation;
        this.failed = nearbyLocation == null;
        if (nearbyLocation != null) {
            this.ls.reverseGeocoding(nearbyLocation, this);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.ls.abort(this);
        super.onDestroy();
    }

    @Override // com.narvii.location.LocationService.GeocodeResultListener
    public void onReverseGeocoding(GPSCoordinate gPSCoordinate, ReadableAddress readableAddress) {
        this.address = readableAddress == null ? null : readableAddress.getCityLevelAddressText();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.ls = (LocationService) getService("location");
        if (bundle != null) {
            this.location = (GPSCoordinate) bundle.getParcelable("location");
            this.address = bundle.getString("address");
        }
        if (this.location == null) {
            this.location = this.ls.getCachedCoordinate();
        }
        GPSCoordinate gPSCoordinate = this.location;
        if (gPSCoordinate == null) {
            this.failed = !this.ls.requireCoordinate(this);
        } else if (this.address == null) {
            this.ls.reverseGeocoding(gPSCoordinate, this);
        }
    }
}
