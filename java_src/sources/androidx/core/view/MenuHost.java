package androidx.core.view;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes4.dex */
public interface MenuHost {
    void addMenuProvider(@NonNull MenuProvider menuProvider);

    void removeMenuProvider(@NonNull MenuProvider menuProvider);
}
