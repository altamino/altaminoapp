package androidx.core.location;

import android.location.GnssMeasurementsEvent;
import android.location.GnssStatus;
import android.location.GnssStatus$Callback;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationRequest;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.collection.SimpleArrayMap;
import androidx.core.os.CancellationSignal;
import androidx.core.util.Consumer;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class LocationManagerCompat {
    private static final long GET_CURRENT_LOCATION_TIMEOUT_MS = 30000;
    private static final long MAX_CURRENT_LOCATION_AGE_MS = 10000;
    private static final long PRE_N_LOOPER_TIMEOUT_S = 5;
    private static Field sContextField;
    private static Method sGnssRequestBuilderBuildMethod;
    private static Class<?> sGnssRequestBuilderClass;

    @GuardedBy
    static final WeakHashMap<LocationListenerKey, WeakReference<LocationListenerTransport>> sLocationListeners = new WeakHashMap<>();
    private static Method sRegisterGnssMeasurementsCallbackMethod;

    @RequiresApi
    static class Api24Impl {
        @RequiresPermission
        @DoNotInline
        static boolean b(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
            Preconditions.a(handler != null);
            SimpleArrayMap<Object, Object> simpleArrayMap = GnssListenersHolder.sGnssStatusListeners;
            synchronized (simpleArrayMap) {
                try {
                    PreRGnssStatusTransport preRGnssStatusTransport = (PreRGnssStatusTransport) simpleArrayMap.get(callback);
                    if (preRGnssStatusTransport == null) {
                        preRGnssStatusTransport = new PreRGnssStatusTransport(callback);
                    } else {
                        preRGnssStatusTransport.j();
                    }
                    preRGnssStatusTransport.i(executor);
                    if (!locationManager.registerGnssStatusCallback(preRGnssStatusTransport, handler)) {
                        return false;
                    }
                    simpleArrayMap.put(callback, preRGnssStatusTransport);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @DoNotInline
        static void d(LocationManager locationManager, Object obj) {
            if (obj instanceof PreRGnssStatusTransport) {
                ((PreRGnssStatusTransport) obj).j();
            }
            locationManager.unregisterGnssStatusCallback((GnssStatus$Callback) obj);
        }

        private Api24Impl() {
        }

        @RequiresPermission
        @DoNotInline
        static boolean a(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback, @NonNull Handler handler) {
            return locationManager.registerGnssMeasurementsCallback(callback, handler);
        }

        @DoNotInline
        static void c(@NonNull LocationManager locationManager, @NonNull GnssMeasurementsEvent.Callback callback) {
            locationManager.unregisterGnssMeasurementsCallback(callback);
        }
    }

    @RequiresApi
    private static class Api30Impl {
        private static Class<?> sLocationRequestClass;
        private static Method sRequestLocationUpdatesExecutorMethod;

        @RequiresPermission
        @DoNotInline
        static void a(LocationManager locationManager, @NonNull String str, @Nullable CancellationSignal cancellationSignal, @NonNull Executor executor, @NonNull final Consumer<Location> consumer) {
            android.os.CancellationSignal cancellationSignal2 = cancellationSignal != null ? (android.os.CancellationSignal) cancellationSignal.b() : null;
            Objects.requireNonNull(consumer);
            locationManager.getCurrentLocation(str, cancellationSignal2, executor, new java.util.function.Consumer() { // from class: androidx.core.location.d
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    consumer.accept((Location) obj);
                }
            });
        }

        @RequiresPermission
        @DoNotInline
        public static boolean b(LocationManager locationManager, Handler handler, Executor executor, GnssStatusCompat.Callback callback) {
            SimpleArrayMap<Object, Object> simpleArrayMap = GnssListenersHolder.sGnssStatusListeners;
            synchronized (simpleArrayMap) {
                try {
                    GnssStatusTransport gnssStatusTransport = (GnssStatusTransport) simpleArrayMap.get(callback);
                    if (gnssStatusTransport == null) {
                        gnssStatusTransport = new GnssStatusTransport(callback);
                    }
                    if (!locationManager.registerGnssStatusCallback(executor, gnssStatusTransport)) {
                        return false;
                    }
                    simpleArrayMap.put(callback, gnssStatusTransport);
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @DoNotInline
        public static boolean c(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, Executor executor, LocationListenerCompat locationListenerCompat) {
            if (Build.VERSION.SDK_INT >= 30) {
                try {
                    if (sLocationRequestClass == null) {
                        sLocationRequestClass = Class.forName("android.location.LocationRequest");
                    }
                    if (sRequestLocationUpdatesExecutorMethod == null) {
                        Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", sLocationRequestClass, Executor.class, LocationListener.class);
                        sRequestLocationUpdatesExecutorMethod = declaredMethod;
                        declaredMethod.setAccessible(true);
                    }
                    LocationRequest locationRequestI = locationRequestCompat.i(str);
                    if (locationRequestI != null) {
                        sRequestLocationUpdatesExecutorMethod.invoke(locationManager, locationRequestI, executor, locationListenerCompat);
                        return true;
                    }
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
                }
            }
            return false;
        }

        private Api30Impl() {
        }
    }

    @RequiresApi
    private static class GnssStatusTransport extends GnssStatus$Callback {
        final GnssStatusCompat.Callback mCallback;

        public void onFirstFix(int i10) {
            this.mCallback.a(i10);
        }

        public void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            this.mCallback.b(GnssStatusCompat.a(gnssStatus));
        }

        public void onStarted() {
            this.mCallback.c();
        }

        public void onStopped() {
            this.mCallback.d();
        }

        GnssStatusTransport(GnssStatusCompat.Callback callback) {
            boolean z6;
            if (callback != null) {
                z6 = true;
            } else {
                z6 = false;
            }
            Preconditions.b(z6, "invalid null callback");
            this.mCallback = callback;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class GpsStatusTransport implements GpsStatus.Listener {
        final GnssStatusCompat.Callback mCallback;

        @Nullable
        volatile Executor mExecutor;
        private final LocationManager mLocationManager;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.d();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Executor executor, int i10) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.a(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Executor executor, GnssStatusCompat gnssStatusCompat) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.b(gnssStatusCompat);
        }

        @Override // android.location.GpsStatus.Listener
        @RequiresPermission
        public void onGpsStatusChanged(int i10) {
            GpsStatus gpsStatus;
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            if (i10 == 1) {
                executor.execute(new Runnable() { // from class: androidx.core.location.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f151a.e(executor);
                    }
                });
                return;
            }
            if (i10 == 2) {
                executor.execute(new Runnable() { // from class: androidx.core.location.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f153a.f(executor);
                    }
                });
                return;
            }
            if (i10 != 3) {
                if (i10 == 4 && (gpsStatus = this.mLocationManager.getGpsStatus(null)) != null) {
                    final GnssStatusCompat gnssStatusCompatB = GnssStatusCompat.b(gpsStatus);
                    executor.execute(new Runnable() { // from class: androidx.core.location.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f158a.h(executor, gnssStatusCompatB);
                        }
                    });
                    return;
                }
                return;
            }
            GpsStatus gpsStatus2 = this.mLocationManager.getGpsStatus(null);
            if (gpsStatus2 != null) {
                final int timeToFirstFix = gpsStatus2.getTimeToFirstFix();
                executor.execute(new Runnable() { // from class: androidx.core.location.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f155a.g(executor, timeToFirstFix);
                    }
                });
            }
        }
    }

    private static class LocationListenerKey {
        final LocationListenerCompat mListener;
        final String mProvider;

        public int hashCode() {
            return ObjectsCompat.b(this.mProvider, this.mListener);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof LocationListenerKey)) {
                return false;
            }
            LocationListenerKey locationListenerKey = (LocationListenerKey) obj;
            return this.mProvider.equals(locationListenerKey.mProvider) && this.mListener.equals(locationListenerKey.mListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class LocationListenerTransport implements LocationListener {
        final Executor mExecutor;

        @Nullable
        volatile LocationListenerKey mKey;

        public void n() {
            this.mKey = null;
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull final Location location) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.n
                @Override // java.lang.Runnable
                public final void run() {
                    this.f169a.i(location);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(int i10) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onFlushComplete(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(Location location) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onLocationChanged(location);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(List list) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onLocationChanged((List<Location>) list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(String str) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onProviderDisabled(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(String str) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onProviderEnabled(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(String str, int i10, Bundle bundle) {
            LocationListenerKey locationListenerKey = this.mKey;
            if (locationListenerKey == null) {
                return;
            }
            locationListenerKey.mListener.onStatusChanged(str, i10, bundle);
        }

        public LocationListenerKey g() {
            return (LocationListenerKey) ObjectsCompat.c(this.mKey);
        }

        @Override // android.location.LocationListener
        public void onFlushComplete(final int i10) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.k
                @Override // java.lang.Runnable
                public final void run() {
                    this.f163a.h(i10);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(@NonNull final List<Location> list) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f165a.j(list);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(@NonNull final String str) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.m
                @Override // java.lang.Runnable
                public final void run() {
                    this.f167a.k(str);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull final String str) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f161a.l(str);
                }
            });
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(final String str, final int i10, final Bundle bundle) {
            if (this.mKey == null) {
                return;
            }
            this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f171a.m(str, i10, bundle);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    static class PreRGnssStatusTransport extends GnssStatus$Callback {
        final GnssStatusCompat.Callback mCallback;

        @Nullable
        volatile Executor mExecutor;

        public void i(Executor executor) {
            Preconditions.b(executor != null, "invalid null executor");
            Preconditions.k(this.mExecutor == null);
            this.mExecutor = executor;
        }

        public void j() {
            this.mExecutor = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(Executor executor, int i10) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.a(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(Executor executor, GnssStatus gnssStatus) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.b(GnssStatusCompat.a(gnssStatus));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.c();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Executor executor) {
            if (this.mExecutor != executor) {
                return;
            }
            this.mCallback.d();
        }

        public void onFirstFix(final int i10) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.f179a.e(executor, i10);
                }
            });
        }

        public void onSatelliteStatusChanged(final GnssStatus gnssStatus) {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f176a.f(executor, gnssStatus);
                }
            });
        }

        public void onStarted() {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.p
                @Override // java.lang.Runnable
                public final void run() {
                    this.f174a.g(executor);
                }
            });
        }

        public void onStopped() {
            final Executor executor = this.mExecutor;
            if (executor == null) {
                return;
            }
            executor.execute(new Runnable() { // from class: androidx.core.location.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f182a.h(executor);
                }
            });
        }

        PreRGnssStatusTransport(GnssStatusCompat.Callback callback) {
            boolean z6;
            if (callback != null) {
                z6 = true;
            } else {
                z6 = false;
            }
            Preconditions.b(z6, "invalid null callback");
            this.mCallback = callback;
        }
    }

    @RequiresApi
    static class Api19Impl {
        private static Class<?> sLocationRequestClass;
        private static Method sRequestLocationUpdatesLooperMethod;

        @DoNotInline
        static boolean a(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationListenerCompat locationListenerCompat, Looper looper) {
            try {
                if (sLocationRequestClass == null) {
                    sLocationRequestClass = Class.forName("android.location.LocationRequest");
                }
                if (sRequestLocationUpdatesLooperMethod == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", sLocationRequestClass, LocationListener.class, Looper.class);
                    sRequestLocationUpdatesLooperMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequestI = locationRequestCompat.i(str);
                if (locationRequestI != null) {
                    sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequestI, locationListenerCompat, looper);
                    return true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
            return false;
        }

        @RequiresPermission
        @DoNotInline
        static boolean b(LocationManager locationManager, String str, LocationRequestCompat locationRequestCompat, LocationListenerTransport locationListenerTransport) {
            try {
                if (sLocationRequestClass == null) {
                    sLocationRequestClass = Class.forName("android.location.LocationRequest");
                }
                if (sRequestLocationUpdatesLooperMethod == null) {
                    Method declaredMethod = LocationManager.class.getDeclaredMethod("requestLocationUpdates", sLocationRequestClass, LocationListener.class, Looper.class);
                    sRequestLocationUpdatesLooperMethod = declaredMethod;
                    declaredMethod.setAccessible(true);
                }
                LocationRequest locationRequestI = locationRequestCompat.i(str);
                if (locationRequestI != null) {
                    synchronized (LocationManagerCompat.sLocationListeners) {
                        sRequestLocationUpdatesLooperMethod.invoke(locationManager, locationRequestI, locationListenerTransport, Looper.getMainLooper());
                        LocationManagerCompat.a(locationManager, locationListenerTransport);
                    }
                    return true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | UnsupportedOperationException | InvocationTargetException unused) {
            }
            return false;
        }

        private Api19Impl() {
        }
    }

    @RequiresApi
    private static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        static String a(LocationManager locationManager) {
            return locationManager.getGnssHardwareModelName();
        }

        @DoNotInline
        static int b(LocationManager locationManager) {
            return locationManager.getGnssYearOfHardware();
        }

        @DoNotInline
        static boolean c(LocationManager locationManager) {
            return locationManager.isLocationEnabled();
        }
    }

    @RequiresApi
    private static class Api31Impl {
        private Api31Impl() {
        }

        @DoNotInline
        static boolean a(LocationManager locationManager, @NonNull String str) {
            return locationManager.hasProvider(str);
        }

        @RequiresPermission
        @DoNotInline
        static boolean b(@NonNull LocationManager locationManager, @NonNull Executor executor, @NonNull GnssMeasurementsEvent.Callback callback) {
            return locationManager.registerGnssMeasurementsCallback(executor, callback);
        }

        @RequiresPermission
        @DoNotInline
        static void c(LocationManager locationManager, @NonNull String str, @NonNull LocationRequest locationRequest, @NonNull Executor executor, @NonNull LocationListener locationListener) {
            locationManager.requestLocationUpdates(str, locationRequest, executor, locationListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class CancellableLocationListener implements LocationListener {
        private Consumer<Location> mConsumer;
        private final Executor mExecutor;
        private final LocationManager mLocationManager;
        private final Handler mTimeoutHandler;

        @Nullable
        Runnable mTimeoutRunnable;

        @GuardedBy
        private boolean mTriggered;

        @RequiresPermission
        private void b() {
            this.mConsumer = null;
            this.mLocationManager.removeUpdates(this);
            Runnable runnable = this.mTimeoutRunnable;
            if (runnable != null) {
                this.mTimeoutHandler.removeCallbacks(runnable);
                this.mTimeoutRunnable = null;
            }
        }

        @Override // android.location.LocationListener
        @RequiresPermission
        public void onLocationChanged(@Nullable final Location location) {
            synchronized (this) {
                try {
                    if (this.mTriggered) {
                        return;
                    }
                    this.mTriggered = true;
                    final Consumer<Location> consumer = this.mConsumer;
                    this.mExecutor.execute(new Runnable() { // from class: androidx.core.location.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            consumer.accept(location);
                        }
                    });
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.location.LocationListener
        @RequiresPermission
        public void onProviderDisabled(@NonNull String str) {
            onLocationChanged((Location) null);
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(@NonNull String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i10, Bundle bundle) {
        }
    }

    private static class GnssListenersHolder {

        @GuardedBy
        static final SimpleArrayMap<Object, Object> sGnssStatusListeners = new SimpleArrayMap<>();

        private GnssListenersHolder() {
        }
    }

    private static final class InlineHandlerExecutor implements Executor {
        private final Handler mHandler;

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (Looper.myLooper() == this.mHandler.getLooper()) {
                runnable.run();
            } else {
                if (this.mHandler.post((Runnable) Preconditions.i(runnable))) {
                    return;
                }
                throw new RejectedExecutionException(this.mHandler + " is shutting down");
            }
        }
    }

    @RequiresPermission
    @GuardedBy
    static void a(LocationManager locationManager, LocationListenerTransport locationListenerTransport) {
        WeakReference<LocationListenerTransport> weakReferencePut = sLocationListeners.put(locationListenerTransport.g(), new WeakReference<>(locationListenerTransport));
        LocationListenerTransport locationListenerTransport2 = weakReferencePut != null ? weakReferencePut.get() : null;
        if (locationListenerTransport2 != null) {
            locationListenerTransport2.n();
            locationManager.removeUpdates(locationListenerTransport2);
        }
    }

    private LocationManagerCompat() {
    }
}
