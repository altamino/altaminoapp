package androidx.appcompat.view.menu;

import android.widget.ListView;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes4.dex */
@RestrictTo
public interface ShowableListMenu {
    void dismiss();

    ListView i();

    boolean isShowing();

    void show();
}
