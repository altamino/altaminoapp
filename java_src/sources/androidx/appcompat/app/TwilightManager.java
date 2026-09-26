package androidx.appcompat.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.PermissionChecker;
import com.narvii.util.DateUtils;
import java.util.Calendar;

/* JADX INFO: loaded from: classes9.dex */
class TwilightManager {
    private static final int SUNRISE = 6;
    private static final int SUNSET = 22;
    private static final String TAG = "TwilightManager";
    private static TwilightManager sInstance;
    private final Context mContext;
    private final LocationManager mLocationManager;
    private final TwilightState mTwilightState = new TwilightState();

    private static class TwilightState {
        boolean isNight;
        long nextUpdate;
        long todaySunrise;
        long todaySunset;
        long tomorrowSunrise;
        long yesterdaySunset;

        TwilightState() {
        }
    }

    static TwilightManager a(@NonNull Context context) {
        if (sInstance == null) {
            Context applicationContext = context.getApplicationContext();
            sInstance = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
        }
        return sInstance;
    }

    @SuppressLint({"MissingPermission"})
    private Location b() {
        Location locationC = PermissionChecker.c(this.mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        Location locationC2 = PermissionChecker.c(this.mContext, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        if (locationC2 == null || locationC == null) {
            return locationC2 != null ? locationC2 : locationC;
        }
        return locationC2.getTime() > locationC.getTime() ? locationC2 : locationC;
    }

    @RequiresPermission
    private Location c(String str) {
        try {
            if (this.mLocationManager.isProviderEnabled(str)) {
                return this.mLocationManager.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d(TAG, "Failed to get last known location", e);
            return null;
        }
    }

    private boolean e() {
        return this.mTwilightState.nextUpdate > System.currentTimeMillis();
    }

    private void f(@NonNull Location location) {
        long j6;
        long j10;
        TwilightState twilightState = this.mTwilightState;
        long jCurrentTimeMillis = System.currentTimeMillis();
        TwilightCalculator twilightCalculatorB = TwilightCalculator.b();
        twilightCalculatorB.a(jCurrentTimeMillis - DateUtils.ONE_DAY, location.getLatitude(), location.getLongitude());
        long j11 = twilightCalculatorB.sunset;
        twilightCalculatorB.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z6 = twilightCalculatorB.state == 1;
        long j12 = twilightCalculatorB.sunrise;
        long j13 = twilightCalculatorB.sunset;
        twilightCalculatorB.a(DateUtils.ONE_DAY + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j14 = twilightCalculatorB.sunrise;
        if (j12 == -1 || j13 == -1) {
            j6 = 43200000 + jCurrentTimeMillis;
        } else {
            if (jCurrentTimeMillis > j13) {
                j10 = j14;
            } else {
                j10 = jCurrentTimeMillis > j12 ? j13 : j12;
            }
            j6 = j10 + 60000;
        }
        twilightState.isNight = z6;
        twilightState.yesterdaySunset = j11;
        twilightState.todaySunrise = j12;
        twilightState.todaySunset = j13;
        twilightState.tomorrowSunrise = j14;
        twilightState.nextUpdate = j6;
    }

    boolean d() {
        TwilightState twilightState = this.mTwilightState;
        if (e()) {
            return twilightState.isNight;
        }
        Location locationB = b();
        if (locationB != null) {
            f(locationB);
            return twilightState.isNight;
        }
        Log.i(TAG, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i10 = Calendar.getInstance().get(11);
        return i10 < 6 || i10 >= 22;
    }

    @VisibleForTesting
    TwilightManager(@NonNull Context context, @NonNull LocationManager locationManager) {
        this.mContext = context;
        this.mLocationManager = locationManager;
    }
}
