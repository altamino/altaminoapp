package androidx.constraintlayout.core.state;

import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public class Registry {
    private static final Registry sRegistry = new Registry();
    private HashMap<String, RegistryCallback> mCallbacks = new HashMap<>();
}
