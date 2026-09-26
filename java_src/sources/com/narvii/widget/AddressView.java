package com.narvii.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.narvii.app.NVContext;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.ReadableAddress;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes6.dex */
public class AddressView extends AppCompatTextView implements LocationService.GeocodeResultListener {
    String address;
    boolean darkTheme;
    boolean emptyPlaceholder;
    int lat;
    int lng;

    public AddressView(Context context) {
        this(context, null);
    }

    public String getAddress() {
        return this.address;
    }

    public AddressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private static String rawCoord(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            return "";
        }
        return GPSCoordinate.latToDegree(i10) + ", " + GPSCoordinate.lngToDegree(i11);
    }

    @Override // com.narvii.location.LocationService.GeocodeResultListener
    public void onReverseGeocoding(GPSCoordinate gPSCoordinate, ReadableAddress readableAddress) {
        if (this.address == null && gPSCoordinate.latitudeE6() == this.lat) {
            int iLongitudeE6 = gPSCoordinate.longitudeE6();
            int i10 = this.lng;
            if (iLongitudeE6 == i10) {
                if (readableAddress != null) {
                    this.address = readableAddress.getCityLevelAddressText();
                    setText(readableAddress.getCityLevelAddressText());
                } else {
                    if (this.emptyPlaceholder) {
                        return;
                    }
                    setText(rawCoord(this.lat, i10));
                }
            }
        }
    }

    public void setDarkTheme(boolean z6) {
        if (this.darkTheme == z6) {
            return;
        }
        this.darkTheme = z6;
        setTextColor(z6 ? -1711276033 : -8553091);
    }

    public void setLatLngE6(int i10, int i11, String str, boolean z6) {
        if (this.lat == i10 && this.lng == i11 && Utils.isStringEquals(this.address, str) && this.emptyPlaceholder == z6) {
            return;
        }
        setText(str);
        this.lat = i10;
        this.lng = i11;
        this.address = str;
        this.emptyPlaceholder = z6;
        if (i10 == 0 || i11 == 0 || !TextUtils.isEmpty(str)) {
            return;
        }
        LocationService locationService = getLocationService();
        if (locationService != null) {
            locationService.reverseGeocoding(GPSCoordinate.create(i10, i11), this);
        } else {
            if (z6) {
                return;
            }
            setText(rawCoord(i10, i11));
        }
    }

    protected LocationService getLocationService() {
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            return (LocationService) nVContext.getService("location");
        }
        return null;
    }
}
