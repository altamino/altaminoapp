package androidx.databinding;

/* JADX INFO: loaded from: classes7.dex */
public class MapChangeRegistry extends CallbackRegistry<ObservableMap.OnMapChangedCallback, ObservableMap, Object> {
    private static CallbackRegistry.NotifierCallback<ObservableMap.OnMapChangedCallback, ObservableMap, Object> NOTIFIER_CALLBACK = new CallbackRegistry.NotifierCallback<ObservableMap.OnMapChangedCallback, ObservableMap, Object>() { // from class: androidx.databinding.MapChangeRegistry.1
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ObservableMap.OnMapChangedCallback onMapChangedCallback, ObservableMap observableMap, int i10, Object obj) {
            onMapChangedCallback.a(observableMap, obj);
        }
    };

    public MapChangeRegistry() {
        super(NOTIFIER_CALLBACK);
    }
}
