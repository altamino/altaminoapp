package com.google.firebase.components;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface j {
    public static final j NOOP = new j() { // from class: com.google.firebase.components.i
        @Override // com.google.firebase.components.j
        public final List a(ComponentRegistrar componentRegistrar) {
            return componentRegistrar.getComponents();
        }
    };

    List<c<?>> a(ComponentRegistrar componentRegistrar);
}
