package androidx.databinding;

/* JADX INFO: loaded from: classes4.dex */
public class PropertyChangeRegistry extends CallbackRegistry<Observable.OnPropertyChangedCallback, Observable, Void> {
    private static final CallbackRegistry.NotifierCallback<Observable.OnPropertyChangedCallback, Observable, Void> NOTIFIER_CALLBACK = new CallbackRegistry.NotifierCallback<Observable.OnPropertyChangedCallback, Observable, Void>() { // from class: androidx.databinding.PropertyChangeRegistry.1
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Observable.OnPropertyChangedCallback onPropertyChangedCallback, Observable observable, int i10, Void r5) {
            onPropertyChangedCallback.e(observable, i10);
        }
    };

    public PropertyChangeRegistry() {
        super(NOTIFIER_CALLBACK);
    }
}
