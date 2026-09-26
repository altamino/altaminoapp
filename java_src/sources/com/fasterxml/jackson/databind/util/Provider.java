package com.fasterxml.jackson.databind.util;

import java.util.Collection;

/* JADX INFO: loaded from: classes9.dex */
@Deprecated
public interface Provider<T> {
    Collection<T> provide();
}
