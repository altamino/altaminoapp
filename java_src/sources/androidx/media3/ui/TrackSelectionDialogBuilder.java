package androidx.media3.ui;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.media3.common.Format;
import androidx.media3.common.Player;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class TrackSelectionDialogBuilder {
    private boolean allowAdaptiveSelections;
    private boolean allowMultipleOverrides;
    private final DialogCallback callback;
    private final Context context;
    private boolean isDisabled;
    private com.google.common.collect.b0<TrackGroup, TrackSelectionOverride> overrides;
    private boolean showDisableOption;

    @StyleRes
    private int themeResId;
    private final CharSequence title;

    @Nullable
    private Comparator<Format> trackFormatComparator;
    private final List<Tracks.Group> trackGroups;

    @Nullable
    private TrackNameProvider trackNameProvider;

    public interface DialogCallback {
    }

    public TrackSelectionDialogBuilder(Context context, CharSequence charSequence, List<Tracks.Group> list, DialogCallback dialogCallback) {
        this.context = context;
        this.title = charSequence;
        this.trackGroups = com.google.common.collect.a0.t(list);
        this.callback = dialogCallback;
        this.overrides = com.google.common.collect.b0.m();
    }

    public TrackSelectionDialogBuilder(Context context, CharSequence charSequence, final Player player, final int i10) {
        this.context = context;
        this.title = charSequence;
        com.google.common.collect.a0<Tracks.Group> a0VarB = (player.g(30) ? player.e() : Tracks.EMPTY).b();
        this.trackGroups = new ArrayList();
        for (int i11 = 0; i11 < a0VarB.size(); i11++) {
            Tracks.Group group = a0VarB.get(i11);
            if (group.e() == i10) {
                this.trackGroups.add(group);
            }
        }
        this.overrides = player.h().overrides;
        this.callback = new DialogCallback() { // from class: androidx.media3.ui.f0
        };
    }
}
