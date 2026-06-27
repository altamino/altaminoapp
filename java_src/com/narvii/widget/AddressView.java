package com.narvii.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import com.narvii.app.NVContext;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.ReadableAddress;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public class AddressView extends TextView implements LocationService.GeocodeResultListener {
    String address;
    boolean darkTheme;
    boolean emptyPlaceholder;
    int lat;
    int lng;

    public AddressView(Context context) {
        this(context, null);
    }

    public AddressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected LocationService getLocationService() {
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            return (LocationService) nVContext.getService("location");
        }
        return null;
    }

    public void setDarkTheme(boolean z) {
        if (this.darkTheme == z) {
            return;
        }
        this.darkTheme = z;
        setTextColor(z ? -1711276033 : -8553091);
    }

    public void setLatLngE6(int i, int i2, String str, boolean z) {
        if (this.lat == i && this.lng == i2 && Utils.isStringEquals(this.address, str) && this.emptyPlaceholder == z) {
            return;
        }
        setText(str);
        this.lat = i;
        this.lng = i2;
        this.address = str;
        this.emptyPlaceholder = z;
        if (i == 0 || i2 == 0 || !TextUtils.isEmpty(str)) {
            return;
        }
        LocationService locationService = getLocationService();
        if (locationService != null) {
            locationService.reverseGeocoding(GPSCoordinate.create(i, i2), this);
        } else {
            if (z) {
                return;
            }
            setText(rawCoord(i, i2));
        }
    }

    public String getAddress() {
        return this.address;
    }

    @Override // com.narvii.location.LocationService.GeocodeResultListener
    public void onReverseGeocoding(GPSCoordinate gPSCoordinate, ReadableAddress readableAddress) {
        if (this.address == null && gPSCoordinate.latitudeE6() == this.lat) {
            int iLongitudeE6 = gPSCoordinate.longitudeE6();
            int i = this.lng;
            if (iLongitudeE6 == i) {
                if (readableAddress == null) {
                    if (this.emptyPlaceholder) {
                        return;
                    }
                    setText(rawCoord(this.lat, i));
                } else {
                    this.address = readableAddress.getCityLevelAddressText();
                    setText(readableAddress.getCityLevelAddressText());
                }
            }
        }
    }

    private static String rawCoord(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return "";
        }
        return GPSCoordinate.latToDegree(i) + ", " + GPSCoordinate.lngToDegree(i2);
    }
}
