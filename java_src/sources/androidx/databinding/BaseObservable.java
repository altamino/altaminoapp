package androidx.databinding;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes9.dex */
public class BaseObservable implements Observable {
    private transient PropertyChangeRegistry mCallbacks;

    @Override // androidx.databinding.Observable
    public void addOnPropertyChangedCallback(@NonNull Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        synchronized (this) {
            try {
                if (this.mCallbacks == null) {
                    this.mCallbacks = new PropertyChangeRegistry();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mCallbacks.b(onPropertyChangedCallback);
    }

    public void notifyChange() {
        synchronized (this) {
            try {
                PropertyChangeRegistry propertyChangeRegistry = this.mCallbacks;
                if (propertyChangeRegistry == null) {
                    return;
                }
                propertyChangeRegistry.e(this, 0, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void notifyPropertyChanged(int i10) {
        synchronized (this) {
            try {
                PropertyChangeRegistry propertyChangeRegistry = this.mCallbacks;
                if (propertyChangeRegistry == null) {
                    return;
                }
                propertyChangeRegistry.e(this, i10, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.databinding.Observable
    public void removeOnPropertyChangedCallback(@NonNull Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        synchronized (this) {
            try {
                PropertyChangeRegistry propertyChangeRegistry = this.mCallbacks;
                if (propertyChangeRegistry == null) {
                    return;
                }
                propertyChangeRegistry.j(onPropertyChangedCallback);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
