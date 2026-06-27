package com.narvii.post;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.picker.GoogleMapPickerFragment;
import com.narvii.permisson.NVPermission;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;

/* loaded from: classes3.dex */
public class LocationPickerFragment extends NVFragment {
    static final int GOOGLE_MAP_PICKER = 7;
    private static final int REQ_CODE_PERMISSION_LOCATION = 202;
    boolean isLocating;
    public LocationListener listener;
    private final Callback<GPSCoordinate> locationListener = new Callback<GPSCoordinate>() { // from class: com.narvii.post.LocationPickerFragment.1
        @Override // com.narvii.util.Callback
        public void call(GPSCoordinate gPSCoordinate) {
            LocationPickerFragment.this.setLocating(false);
            LocationPickerFragment locationPickerFragment = LocationPickerFragment.this;
            GPSCoordinate nearbyLocation = locationPickerFragment.locationService.getNearbyLocation(locationPickerFragment.preferMyLocation);
            if (nearbyLocation != null) {
                LocationPickerFragment.this.dispatchResult(nearbyLocation);
            } else {
                NVToast.makeText(LocationPickerFragment.this.getContext(), R.string.post_location_fail, 0).show();
            }
        }
    };
    LocationService locationService;
    boolean preferMyLocation;

    public interface LocationListener {
        void onLocatingChanged(boolean z);

        void onLocationResult(GPSCoordinate gPSCoordinate);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.locationService = (LocationService) getService("location");
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        this.locationService.abort(this.locationListener);
        super.onDestroy();
    }

    public boolean isLocating() {
        return this.isLocating;
    }

    void setLocating(boolean z) {
        if (this.isLocating != z) {
            this.isLocating = z;
            LocationListener locationListener = this.listener;
            if (locationListener != null) {
                locationListener.onLocatingChanged(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchResult(GPSCoordinate gPSCoordinate) {
        LocationListener locationListener = this.listener;
        if (locationListener != null) {
            locationListener.onLocationResult(gPSCoordinate);
        }
    }

    public void pickLocation(final int i, final int i2, final boolean z) {
        if (i == 0 && i2 == 0) {
            if (this.isLocating) {
                return;
            }
            this.preferMyLocation = z;
            if (this.locationService.getCachedCoordinate() != null) {
                Utils.post(new Runnable() { // from class: com.narvii.post.LocationPickerFragment.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LocationPickerFragment locationPickerFragment = LocationPickerFragment.this;
                        locationPickerFragment.dispatchResult(locationPickerFragment.locationService.getNearbyLocation(z));
                    }
                });
                return;
            } else {
                NVPermission.builder(this).permissionListener(this).permission("android.permission.ACCESS_COARSE_LOCATION").requestCode(202).request();
                return;
            }
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        final int[] iArr = new int[2];
        char c = 0;
        if (NVApplication.CLIENT_TYPE != 101) {
            actionSheetDialog.addItem(R.string.post_pick_location, false);
            iArr[0] = 1;
            c = 1;
        }
        actionSheetDialog.addItem(R.string.post_remove_location, true);
        iArr[c] = 2;
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.post.LocationPickerFragment.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i3) {
                if (iArr[i3] == 1) {
                    Intent intent = FragmentWrapperActivity.intent(GoogleMapPickerFragment.class);
                    intent.putExtra("lat", i);
                    intent.putExtra("lng", i2);
                    LocationPickerFragment.this.startActivityForResult(intent, 7);
                }
                if (iArr[i3] == 2) {
                    LocationPickerFragment.this.dispatchResult(null);
                }
            }
        });
        actionSheetDialog.show();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 7 && i2 == -1 && intent != null) {
            dispatchResult(GPSCoordinate.create(intent.getIntExtra("lat", 0), intent.getIntExtra("lng", 0)));
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        if (i == 202 && this.locationService.requireCoordinate(this.locationListener, ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS, LocationService.DEFAULT_TIMEOUT)) {
            setLocating(true);
        }
    }
}
