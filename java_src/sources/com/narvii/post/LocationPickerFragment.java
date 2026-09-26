package com.narvii.post;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.picker.GoogleMapPickerFragment;
import com.narvii.permisson.NVPermission;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes10.dex */
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
            if (nearbyLocation == null) {
                NVToast.makeText(LocationPickerFragment.this.getContext(), R.string.post_location_fail, 0).show();
            } else {
                LocationPickerFragment.this.dispatchResult(nearbyLocation);
            }
        }
    };
    LocationService locationService;
    boolean preferMyLocation;

    public interface LocationListener {
        void onLocatingChanged(boolean z6);

        void onLocationResult(GPSCoordinate gPSCoordinate);
    }

    public boolean isLocating() {
        return this.isLocating;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchResult(GPSCoordinate gPSCoordinate) {
        LocationListener locationListener = this.listener;
        if (locationListener != null) {
            locationListener.onLocationResult(gPSCoordinate);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.locationService.abort(this.locationListener);
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
        if (i10 == 202 && this.locationService.requireCoordinate(this.locationListener, 3000L, LocationService.DEFAULT_TIMEOUT)) {
            setLocating(true);
        }
    }

    public void pickLocation(final int i10, final int i11, final boolean z6) {
        if (i10 != 0 || i11 != 0) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.post_remove_location, true);
            final int[] iArr = {2, 0};
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.post.LocationPickerFragment.3
                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i12) {
                    if (iArr[i12] == 1) {
                        Intent intent = FragmentWrapperActivity.intent(GoogleMapPickerFragment.class);
                        intent.putExtra("lat", i10);
                        intent.putExtra("lng", i11);
                        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(LocationPickerFragment.this, intent, 7);
                    }
                    if (iArr[i12] == 2) {
                        LocationPickerFragment.this.dispatchResult(null);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        if (this.isLocating) {
            return;
        }
        this.preferMyLocation = z6;
        if (this.locationService.getCachedCoordinate() != null) {
            Utils.post(new Runnable() { // from class: com.narvii.post.LocationPickerFragment.2
                @Override // java.lang.Runnable
                public void run() {
                    LocationPickerFragment locationPickerFragment = LocationPickerFragment.this;
                    locationPickerFragment.dispatchResult(locationPickerFragment.locationService.getNearbyLocation(z6));
                }
            });
        } else {
            NVPermission.builder(this).permissionListener(this).permission("android.permission.ACCESS_COARSE_LOCATION").requestCode(202).request();
        }
    }

    void setLocating(boolean z6) {
        if (this.isLocating != z6) {
            this.isLocating = z6;
            LocationListener locationListener = this.listener;
            if (locationListener != null) {
                locationListener.onLocatingChanged(z6);
            }
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 7 && i11 == -1 && intent != null) {
            dispatchResult(GPSCoordinate.create(intent.getIntExtra("lat", 0), intent.getIntExtra("lng", 0)));
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.locationService = (LocationService) getService("location");
    }
}
