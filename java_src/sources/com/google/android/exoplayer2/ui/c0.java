package com.google.android.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.c3;
import com.google.android.exoplayer2.d3;
import com.google.android.exoplayer2.e4;
import com.google.android.exoplayer2.f3;
import com.google.android.exoplayer2.i2;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.n2;
import com.google.android.exoplayer2.source.f1;
import com.google.android.exoplayer2.x1;
import com.google.android.exoplayer2.z2;
import com.google.android.exoplayer2.z3;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class c0 extends FrameLayout {
    public static final int DEFAULT_REPEAT_TOGGLE_MODES = 0;
    public static final int DEFAULT_SHOW_TIMEOUT_MS = 5000;
    public static final int DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS = 200;
    private static final int MAX_UPDATE_INTERVAL_MS = 1000;
    public static final int MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR = 100;
    private static final float[] PLAYBACK_SPEEDS;
    private static final int SETTINGS_AUDIO_TRACK_SELECTION_POSITION = 1;
    private static final int SETTINGS_PLAYBACK_SPEED_POSITION = 0;
    private long[] adGroupTimesMs;

    @Nullable
    private final View audioTrackButton;
    private final b audioTrackSelectionAdapter;
    private final float buttonAlphaDisabled;
    private final float buttonAlphaEnabled;
    private final c componentListener;
    private final v0 controlViewLayoutManager;
    private long currentWindowOffset;

    @Nullable
    private final TextView durationView;
    private long[] extraAdGroupTimesMs;
    private boolean[] extraPlayedAdGroups;

    @Nullable
    private final View fastForwardButton;

    @Nullable
    private final TextView fastForwardButtonTextView;
    private final StringBuilder formatBuilder;
    private final Formatter formatter;

    @Nullable
    private final ImageView fullScreenButton;
    private final String fullScreenEnterContentDescription;
    private final Drawable fullScreenEnterDrawable;
    private final String fullScreenExitContentDescription;
    private final Drawable fullScreenExitDrawable;
    private boolean isAttachedToWindow;
    private boolean isFullScreen;

    @Nullable
    private final ImageView minimalFullScreenButton;
    private boolean multiWindowTimeBar;
    private boolean needToHideBars;

    @Nullable
    private final View nextButton;

    @Nullable
    private d onFullScreenModeChangedListener;
    private final z3.b period;

    @Nullable
    private final View playPauseButton;
    private final e playbackSpeedAdapter;

    @Nullable
    private final View playbackSpeedButton;
    private boolean[] playedAdGroups;

    @Nullable
    private d3 player;

    @Nullable
    private final TextView positionView;

    @Nullable
    private final View previousButton;

    @Nullable
    private f progressUpdateListener;
    private final String repeatAllButtonContentDescription;
    private final Drawable repeatAllButtonDrawable;
    private final String repeatOffButtonContentDescription;
    private final Drawable repeatOffButtonDrawable;
    private final String repeatOneButtonContentDescription;
    private final Drawable repeatOneButtonDrawable;

    @Nullable
    private final ImageView repeatToggleButton;
    private int repeatToggleModes;
    private final Resources resources;

    @Nullable
    private final View rewindButton;

    @Nullable
    private final TextView rewindButtonTextView;
    private boolean scrubbing;
    private final h settingsAdapter;

    @Nullable
    private final View settingsButton;
    private final RecyclerView settingsView;
    private final PopupWindow settingsWindow;
    private final int settingsWindowMargin;
    private boolean showMultiWindowTimeBar;
    private int showTimeoutMs;

    @Nullable
    private final ImageView shuffleButton;
    private final Drawable shuffleOffButtonDrawable;
    private final String shuffleOffContentDescription;
    private final Drawable shuffleOnButtonDrawable;
    private final String shuffleOnContentDescription;

    @Nullable
    private final ImageView subtitleButton;
    private final Drawable subtitleOffButtonDrawable;
    private final String subtitleOffContentDescription;
    private final Drawable subtitleOnButtonDrawable;
    private final String subtitleOnContentDescription;
    private final j textTrackSelectionAdapter;

    @Nullable
    private final b1 timeBar;
    private int timeBarMinUpdateIntervalMs;
    private final c1 trackNameProvider;
    private final Runnable updateProgressAction;
    private final CopyOnWriteArrayList<m> visibilityListeners;

    @Nullable
    private final View vrButton;
    private final z3.d window;

    /* JADX INFO: Access modifiers changed from: private */
    final class b extends l {
        private b() {
            super();
        }

        private boolean n(com.google.android.exoplayer2.trackselection.z zVar) {
            for (int i10 = 0; i10 < this.tracks.size(); i10++) {
                if (zVar.overrides.containsKey(this.tracks.get(i10).trackGroup.b())) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(View view) {
            if (c0.this.player == null) {
                return;
            }
            ((d3) com.google.android.exoplayer2.util.o0.j(c0.this.player)).D(c0.this.player.h().a().B(1).J(1, false).A());
            c0.this.settingsAdapter.i(1, c0.this.getResources().getString(t.exo_track_selection_auto));
            c0.this.settingsWindow.dismiss();
        }

        @Override // com.google.android.exoplayer2.ui.c0.l
        public void j(i iVar) {
            iVar.textView.setText(t.exo_track_selection_auto);
            iVar.checkView.setVisibility(n(((d3) com.google.android.exoplayer2.util.a.e(c0.this.player)).h()) ? 4 : 0);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1314a.p(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.c0.l
        public void l(String str) {
            c0.this.settingsAdapter.i(1, str);
        }

        public void o(List<k> list) {
            this.tracks = list;
            com.google.android.exoplayer2.trackselection.z zVarH = ((d3) com.google.android.exoplayer2.util.a.e(c0.this.player)).h();
            if (list.isEmpty()) {
                c0.this.settingsAdapter.i(1, c0.this.getResources().getString(t.exo_track_selection_none));
                return;
            }
            if (!n(zVarH)) {
                c0.this.settingsAdapter.i(1, c0.this.getResources().getString(t.exo_track_selection_auto));
                return;
            }
            for (int i10 = 0; i10 < list.size(); i10++) {
                k kVar = list.get(i10);
                if (kVar.a()) {
                    c0.this.settingsAdapter.i(1, kVar.trackName);
                    return;
                }
            }
        }
    }

    private final class c implements d3.d, b1.a, View.OnClickListener, PopupWindow.OnDismissListener {
        private c() {
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void B(n2 n2Var) {
            f3.k(this, n2Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void E(z2 z2Var) {
            f3.r(this, z2Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void F(z2 z2Var) {
            f3.q(this, z2Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void H(d3.b bVar) {
            f3.a(this, bVar);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void J(com.google.android.exoplayer2.o oVar) {
            f3.d(this, oVar);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void M(com.google.android.exoplayer2.trackselection.z zVar) {
            f3.C(this, zVar);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void N(e4 e4Var) {
            f3.D(this, e4Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public void P(d3 d3Var, d3.c cVar) {
            if (cVar.b(4, 5)) {
                c0.this.y0();
            }
            if (cVar.b(4, 5, 7)) {
                c0.this.A0();
            }
            if (cVar.a(8)) {
                c0.this.B0();
            }
            if (cVar.a(9)) {
                c0.this.E0();
            }
            if (cVar.b(8, 9, 11, 0, 16, 17, 13)) {
                c0.this.x0();
            }
            if (cVar.b(11, 0)) {
                c0.this.F0();
            }
            if (cVar.a(12)) {
                c0.this.z0();
            }
            if (cVar.a(2)) {
                c0.this.G0();
            }
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void R(i2 i2Var, int i10) {
            f3.j(this, i2Var, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void k(com.google.android.exoplayer2.video.a0 a0Var) {
            f3.E(this, a0Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void n(Metadata metadata) {
            f3.l(this, metadata);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void o(c3 c3Var) {
            f3.n(this, c3Var);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onCues(List list) {
            f3.c(this, list);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onDeviceVolumeChanged(int i10, boolean z6) {
            f3.e(this, i10, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onIsLoadingChanged(boolean z6) {
            f3.g(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onIsPlayingChanged(boolean z6) {
            f3.h(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onLoadingChanged(boolean z6) {
            f3.i(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onPlayWhenReadyChanged(boolean z6, int i10) {
            f3.m(this, z6, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onPlaybackStateChanged(int i10) {
            f3.o(this, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i10) {
            f3.p(this, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onPlayerStateChanged(boolean z6, int i10) {
            f3.s(this, z6, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onPositionDiscontinuity(int i10) {
            f3.t(this, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onRenderedFirstFrame() {
            f3.v(this);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onRepeatModeChanged(int i10) {
            f3.w(this, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onSeekProcessed() {
            f3.x(this);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z6) {
            f3.y(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onSkipSilenceEnabledChanged(boolean z6) {
            f3.z(this, z6);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onSurfaceSizeChanged(int i10, int i11) {
            f3.A(this, i10, i11);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void onVolumeChanged(float f) {
            f3.F(this, f);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void x(com.google.android.exoplayer2.text.f fVar) {
            f3.b(this, fVar);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void y(d3.e eVar, d3.e eVar2, int i10) {
            f3.u(this, eVar, eVar2, i10);
        }

        @Override // com.google.android.exoplayer2.d3.d
        public /* synthetic */ void z(z3 z3Var, int i10) {
            f3.B(this, z3Var, i10);
        }

        @Override // com.google.android.exoplayer2.ui.b1.a
        public void j(b1 b1Var, long j6, boolean z6) {
            c0.this.scrubbing = false;
            if (!z6 && c0.this.player != null) {
                c0 c0Var = c0.this;
                c0Var.p0(c0Var.player, j6);
            }
            c0.this.controlViewLayoutManager.W();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d3 d3Var = c0.this.player;
            if (d3Var == null) {
                return;
            }
            c0.this.controlViewLayoutManager.W();
            if (c0.this.nextButton == view) {
                d3Var.t();
                return;
            }
            if (c0.this.previousButton == view) {
                d3Var.o();
                return;
            }
            if (c0.this.fastForwardButton == view) {
                if (d3Var.getPlaybackState() != 4) {
                    d3Var.m();
                    return;
                }
                return;
            }
            if (c0.this.rewindButton == view) {
                d3Var.y();
                return;
            }
            if (c0.this.playPauseButton == view) {
                c0.this.X(d3Var);
                return;
            }
            if (c0.this.repeatToggleButton == view) {
                d3Var.setRepeatMode(com.google.android.exoplayer2.util.f0.a(d3Var.getRepeatMode(), c0.this.repeatToggleModes));
                return;
            }
            if (c0.this.shuffleButton == view) {
                d3Var.setShuffleModeEnabled(!d3Var.getShuffleModeEnabled());
                return;
            }
            if (c0.this.settingsButton == view) {
                c0.this.controlViewLayoutManager.V();
                c0 c0Var = c0.this;
                c0Var.Y(c0Var.settingsAdapter, c0.this.settingsButton);
                return;
            }
            if (c0.this.playbackSpeedButton == view) {
                c0.this.controlViewLayoutManager.V();
                c0 c0Var2 = c0.this;
                c0Var2.Y(c0Var2.playbackSpeedAdapter, c0.this.playbackSpeedButton);
            } else if (c0.this.audioTrackButton == view) {
                c0.this.controlViewLayoutManager.V();
                c0 c0Var3 = c0.this;
                c0Var3.Y(c0Var3.audioTrackSelectionAdapter, c0.this.audioTrackButton);
            } else if (c0.this.subtitleButton == view) {
                c0.this.controlViewLayoutManager.V();
                c0 c0Var4 = c0.this;
                c0Var4.Y(c0Var4.textTrackSelectionAdapter, c0.this.subtitleButton);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            if (c0.this.needToHideBars) {
                c0.this.controlViewLayoutManager.W();
            }
        }

        @Override // com.google.android.exoplayer2.ui.b1.a
        public void q(b1 b1Var, long j6) {
            if (c0.this.positionView != null) {
                c0.this.positionView.setText(com.google.android.exoplayer2.util.o0.b0(c0.this.formatBuilder, c0.this.formatter, j6));
            }
        }

        @Override // com.google.android.exoplayer2.ui.b1.a
        public void r(b1 b1Var, long j6) {
            c0.this.scrubbing = true;
            if (c0.this.positionView != null) {
                c0.this.positionView.setText(com.google.android.exoplayer2.util.o0.b0(c0.this.formatBuilder, c0.this.formatter, j6));
            }
            c0.this.controlViewLayoutManager.V();
        }
    }

    @Deprecated
    public interface d {
        void j(boolean z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class e extends RecyclerView.Adapter<i> {
        private final String[] playbackSpeedTexts;
        private final float[] playbackSpeeds;
        private int selectedIndex;

        public void l(float f) {
            int i10 = 0;
            float f6 = Float.MAX_VALUE;
            int i11 = 0;
            while (true) {
                float[] fArr = this.playbackSpeeds;
                if (i10 >= fArr.length) {
                    this.selectedIndex = i11;
                    return;
                }
                float fAbs = Math.abs(f - fArr[i10]);
                if (fAbs < f6) {
                    i11 = i10;
                    f6 = fAbs;
                }
                i10++;
            }
        }

        public e(String[] strArr, float[] fArr) {
            this.playbackSpeedTexts = strArr;
            this.playbackSpeeds = fArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i(int i10, View view) {
            if (i10 != this.selectedIndex) {
                c0.this.setPlaybackSpeed(this.playbackSpeeds[i10]);
            }
            c0.this.settingsWindow.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.playbackSpeedTexts.length;
        }

        public String h() {
            return this.playbackSpeedTexts[this.selectedIndex];
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(i iVar, final int i10) {
            String[] strArr = this.playbackSpeedTexts;
            if (i10 < strArr.length) {
                iVar.textView.setText(strArr[i10]);
            }
            if (i10 == this.selectedIndex) {
                iVar.itemView.setSelected(true);
                iVar.checkView.setVisibility(0);
            } else {
                iVar.itemView.setSelected(false);
                iVar.checkView.setVisibility(4);
            }
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1315a.i(i10, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(c0.this.getContext()).inflate(r.exo_styled_sub_settings_list_item, viewGroup, false));
        }
    }

    public interface f {
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class g extends RecyclerView.ViewHolder {
        private final ImageView iconView;
        private final TextView mainTextView;
        private final TextView subTextView;

        public g(View view) {
            super(view);
            if (com.google.android.exoplayer2.util.o0.SDK_INT < 26) {
                view.setFocusable(true);
            }
            this.mainTextView = (TextView) view.findViewById(p.exo_main_text);
            this.subTextView = (TextView) view.findViewById(p.exo_sub_text);
            this.iconView = (ImageView) view.findViewById(p.exo_icon);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f1318a.lambda$new$0(view2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            c0.this.l0(getAdapterPosition());
        }
    }

    private class h extends RecyclerView.Adapter<g> {
        private final Drawable[] iconIds;
        private final String[] mainTexts;
        private final String[] subTexts;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        public h(String[] strArr, Drawable[] drawableArr) {
            this.mainTexts = strArr;
            this.subTexts = new String[strArr.length];
            this.iconIds = drawableArr;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.mainTexts.length;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public g onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return c0.this.new g(LayoutInflater.from(c0.this.getContext()).inflate(r.exo_styled_settings_list_item, viewGroup, false));
        }

        public void i(int i10, String str) {
            this.subTexts[i10] = str;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(g gVar, int i10) {
            gVar.mainTextView.setText(this.mainTexts[i10]);
            if (this.subTexts[i10] == null) {
                gVar.subTextView.setVisibility(8);
            } else {
                gVar.subTextView.setText(this.subTexts[i10]);
            }
            if (this.iconIds[i10] == null) {
                gVar.iconView.setVisibility(8);
            } else {
                gVar.iconView.setImageDrawable(this.iconIds[i10]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class j extends l {
        private j() {
            super();
        }

        @Override // com.google.android.exoplayer2.ui.c0.l
        public void l(String str) {
        }

        public void n(List<k> list) {
            boolean z6 = false;
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (list.get(i10).a()) {
                    z6 = true;
                    break;
                }
            }
            if (c0.this.subtitleButton != null) {
                ImageView imageView = c0.this.subtitleButton;
                c0 c0Var = c0.this;
                imageView.setImageDrawable(z6 ? c0Var.subtitleOnButtonDrawable : c0Var.subtitleOffButtonDrawable);
                c0.this.subtitleButton.setContentDescription(z6 ? c0.this.subtitleOnContentDescription : c0.this.subtitleOffContentDescription);
            }
            this.tracks = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(View view) {
            if (c0.this.player != null) {
                c0.this.player.D(c0.this.player.h().a().B(3).F(-3).A());
                c0.this.settingsWindow.dismiss();
            }
        }

        @Override // com.google.android.exoplayer2.ui.c0.l
        public void j(i iVar) {
            boolean z6;
            iVar.textView.setText(t.exo_track_selection_none);
            int i10 = 0;
            while (true) {
                if (i10 >= this.tracks.size()) {
                    z6 = true;
                    break;
                } else {
                    if (this.tracks.get(i10).a()) {
                        z6 = false;
                        break;
                    }
                    i10++;
                }
            }
            iVar.checkView.setVisibility(z6 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1320a.o(view);
                }
            });
        }

        @Override // com.google.android.exoplayer2.ui.c0.l, androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(i iVar, int i10) {
            int i11;
            super.onBindViewHolder(iVar, i10);
            if (i10 > 0) {
                k kVar = this.tracks.get(i10 - 1);
                View view = iVar.checkView;
                if (kVar.a()) {
                    i11 = 0;
                } else {
                    i11 = 4;
                }
                view.setVisibility(i11);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class k {
        public final e4.a trackGroup;
        public final int trackIndex;
        public final String trackName;

        public boolean a() {
            return this.trackGroup.f(this.trackIndex);
        }

        public k(e4 e4Var, int i10, int i11, String str) {
            this.trackGroup = e4Var.b().get(i10);
            this.trackIndex = i11;
            this.trackName = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    abstract class l extends RecyclerView.Adapter<i> {
        protected List<k> tracks = new ArrayList();

        protected abstract void j(i iVar);

        protected abstract void l(String str);

        protected l() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            if (this.tracks.isEmpty()) {
                return 0;
            }
            return this.tracks.size() + 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: i */
        public void onBindViewHolder(i iVar, int i10) {
            final d3 d3Var = c0.this.player;
            if (d3Var == null) {
                return;
            }
            if (i10 == 0) {
                j(iVar);
                return;
            }
            final k kVar = this.tracks.get(i10 - 1);
            final f1 f1VarB = kVar.trackGroup.b();
            boolean z6 = d3Var.h().overrides.get(f1VarB) != null && kVar.a();
            iVar.textView.setText(kVar.trackName);
            iVar.checkView.setVisibility(z6 ? 0 : 4);
            iVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f1321a.h(d3Var, f1VarB, kVar, view);
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public i onCreateViewHolder(ViewGroup viewGroup, int i10) {
            return new i(LayoutInflater.from(c0.this.getContext()).inflate(r.exo_styled_sub_settings_list_item, viewGroup, false));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(d3 d3Var, f1 f1Var, k kVar, View view) {
            d3Var.D(d3Var.h().a().G(new com.google.android.exoplayer2.trackselection.x(f1Var, com.google.common.collect.a0.y(Integer.valueOf(kVar.trackIndex)))).J(kVar.trackGroup.d(), false).A());
            l(kVar.trackName);
            c0.this.settingsWindow.dismiss();
        }

        protected void clear() {
            this.tracks = Collections.emptyList();
        }
    }

    @Deprecated
    public interface m {
        void onVisibilityChange(int i10);
    }

    public c0(Context context) {
        this(context, null);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean g0(int i10) {
        return i10 == 90 || i10 == 89 || i10 == 85 || i10 == 79 || i10 == 126 || i10 == 127 || i10 == 87 || i10 == 88;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int i18 = i13 - i11;
        int i19 = i17 - i15;
        if (!(i12 - i10 == i16 - i14 && i18 == i19) && this.settingsWindow.isShowing()) {
            D0();
            this.settingsWindow.update(view, (getWidth() - this.settingsWindow.getWidth()) - this.settingsWindowMargin, (-this.settingsWindow.getHeight()) - this.settingsWindowMargin, -1, -1);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
        return super.dispatchTouchEvent(me);
    }

    @Nullable
    public d3 getPlayer() {
        return this.player;
    }

    public int getRepeatToggleModes() {
        return this.repeatToggleModes;
    }

    public int getShowTimeoutMs() {
        return this.showTimeoutMs;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    public void setProgressUpdateListener(@Nullable f fVar) {
    }

    private static class i extends RecyclerView.ViewHolder {
        public final View checkView;
        public final TextView textView;

        public i(View view) {
            super(view);
            if (com.google.android.exoplayer2.util.o0.SDK_INT < 26) {
                view.setFocusable(true);
            }
            this.textView = (TextView) view.findViewById(p.exo_text);
            this.checkView = view.findViewById(p.exo_check);
        }
    }

    static {
        x1.a("goog.exo.ui");
        PLAYBACK_SPEEDS = new float[]{0.25f, 0.5f, 0.75f, 1.0f, 1.25f, 1.5f, 2.0f};
    }

    public c0(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void C0() {
        d3 d3Var = this.player;
        int iA = (int) ((d3Var != null ? d3Var.A() : 5000L) / 1000);
        TextView textView = this.rewindButtonTextView;
        if (textView != null) {
            textView.setText(String.valueOf(iA));
        }
        View view = this.rewindButton;
        if (view != null) {
            view.setContentDescription(this.resources.getQuantityString(s.exo_controls_rewind_by_amount_description, iA, Integer.valueOf(iA)));
        }
    }

    private void D0() {
        this.settingsView.measure(0, 0);
        this.settingsWindow.setWidth(Math.min(this.settingsView.getMeasuredWidth(), getWidth() - (this.settingsWindowMargin * 2)));
        this.settingsWindow.setHeight(Math.min(getHeight() - (this.settingsWindowMargin * 2), this.settingsView.getMeasuredHeight()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4 A[SYNTHETIC] */
    public void F0() {
        int i10;
        z3.d dVar;
        long jQ;
        long[] jArr;
        int length;
        d3 d3Var = this.player;
        if (d3Var == null) {
            return;
        }
        boolean z6 = true;
        this.multiWindowTimeBar = this.showMultiWindowTimeBar && T(d3Var.getCurrentTimeline(), this.window);
        long j6 = 0;
        this.currentWindowOffset = 0L;
        z3 currentTimeline = d3Var.getCurrentTimeline();
        if (currentTimeline.u()) {
            i10 = 0;
        } else {
            int iX = d3Var.x();
            boolean z10 = this.multiWindowTimeBar;
            int i11 = z10 ? 0 : iX;
            int iT = z10 ? currentTimeline.t() - 1 : iX;
            long j10 = 0;
            i10 = 0;
            while (i11 <= iT) {
                if (i11 == iX) {
                    this.currentWindowOffset = com.google.android.exoplayer2.util.o0.P0(j10);
                }
                currentTimeline.r(i11, this.window);
                z3.d dVar2 = this.window;
                if (dVar2.durationUs == -9223372036854775807L) {
                    com.google.android.exoplayer2.util.a.g(this.multiWindowTimeBar ^ z6);
                    break;
                }
                int i12 = dVar2.firstPeriodIndex;
                while (true) {
                    dVar = this.window;
                    if (i12 <= dVar.lastPeriodIndex) {
                        currentTimeline.j(i12, this.period);
                        int iF = this.period.f();
                        for (int iR = this.period.r(); iR < iF; iR++) {
                            long jI = this.period.i(iR);
                            if (jI == Long.MIN_VALUE) {
                                long j11 = this.period.durationUs;
                                if (j11 != -9223372036854775807L) {
                                    jI = j11;
                                    jQ = jI + this.period.q();
                                    if (jQ >= 0) {
                                        jArr = this.adGroupTimesMs;
                                        if (i10 == jArr.length) {
                                            if (jArr.length == 0) {
                                                length = 1;
                                            } else {
                                                length = jArr.length * 2;
                                            }
                                            this.adGroupTimesMs = Arrays.copyOf(jArr, length);
                                            this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, length);
                                        }
                                        this.adGroupTimesMs[i10] = com.google.android.exoplayer2.util.o0.P0(j10 + jQ);
                                        this.playedAdGroups[i10] = this.period.s(iR);
                                        i10++;
                                    }
                                }
                            } else {
                                jQ = jI + this.period.q();
                                if (jQ >= 0) {
                                    jArr = this.adGroupTimesMs;
                                    if (i10 == jArr.length) {
                                        if (jArr.length == 0) {
                                            length = 1;
                                        } else {
                                            length = jArr.length * 2;
                                        }
                                        this.adGroupTimesMs = Arrays.copyOf(jArr, length);
                                        this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, length);
                                    }
                                    this.adGroupTimesMs[i10] = com.google.android.exoplayer2.util.o0.P0(j10 + jQ);
                                    this.playedAdGroups[i10] = this.period.s(iR);
                                    i10++;
                                }
                            }
                        }
                        i12++;
                    }
                }
                j10 += dVar.durationUs;
                i11++;
                z6 = true;
            }
            j6 = j10;
        }
        long jP0 = com.google.android.exoplayer2.util.o0.P0(j6);
        TextView textView = this.durationView;
        if (textView != null) {
            textView.setText(com.google.android.exoplayer2.util.o0.b0(this.formatBuilder, this.formatter, jP0));
        }
        b1 b1Var = this.timeBar;
        if (b1Var != null) {
            b1Var.setDuration(jP0);
            int length2 = this.extraAdGroupTimesMs.length;
            int i13 = i10 + length2;
            long[] jArr2 = this.adGroupTimesMs;
            if (i13 > jArr2.length) {
                this.adGroupTimesMs = Arrays.copyOf(jArr2, i13);
                this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, i13);
            }
            System.arraycopy(this.extraAdGroupTimesMs, 0, this.adGroupTimesMs, i10, length2);
            System.arraycopy(this.extraPlayedAdGroups, 0, this.playedAdGroups, i10, length2);
            this.timeBar.setAdGroupTimesMs(this.adGroupTimesMs, this.playedAdGroups, i13);
        }
        A0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y(RecyclerView.Adapter<?> adapter, View view) {
        this.settingsView.setAdapter(adapter);
        D0();
        this.needToHideBars = false;
        this.settingsWindow.dismiss();
        this.needToHideBars = true;
        this.settingsWindow.showAsDropDown(view, (getWidth() - this.settingsWindow.getWidth()) - this.settingsWindowMargin, (-this.settingsWindow.getHeight()) - this.settingsWindowMargin);
    }

    private com.google.common.collect.a0<k> Z(e4 e4Var, int i10) {
        com.google.common.collect.a0.a aVar = new com.google.common.collect.a0.a();
        com.google.common.collect.a0<e4.a> a0VarB = e4Var.b();
        for (int i11 = 0; i11 < a0VarB.size(); i11++) {
            e4.a aVar2 = a0VarB.get(i11);
            if (aVar2.d() == i10) {
                for (int i12 = 0; i12 < aVar2.length; i12++) {
                    if (aVar2.g(i12)) {
                        a2 a2VarC = aVar2.c(i12);
                        if ((a2VarC.selectionFlags & 2) == 0) {
                            aVar.d(new k(e4Var, i11, i12, this.trackNameProvider.a(a2VarC)));
                        }
                    }
                }
            }
        }
        return aVar.k();
    }

    private static int a0(TypedArray typedArray, int i10) {
        return typedArray.getInt(v.StyledPlayerControlView_repeat_toggle_modes, i10);
    }

    private void d0() {
        this.textTrackSelectionAdapter.clear();
        this.audioTrackSelectionAdapter.clear();
        d3 d3Var = this.player;
        if (d3Var != null && d3Var.g(30) && this.player.g(29)) {
            e4 e4VarE = this.player.e();
            this.audioTrackSelectionAdapter.o(Z(e4VarE, 1));
            if (this.controlViewLayoutManager.A(this.subtitleButton)) {
                this.textTrackSelectionAdapter.n(Z(e4VarE, 3));
            } else {
                this.textTrackSelectionAdapter.n(com.google.common.collect.a0.x());
            }
        }
    }

    private static void e0(View view, View.OnClickListener onClickListener) {
        if (view == null) {
            return;
        }
        view.setVisibility(8);
        view.setOnClickListener(onClickListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j0(View view) {
        if (this.onFullScreenModeChangedListener == null) {
            return;
        }
        boolean z6 = !this.isFullScreen;
        this.isFullScreen = z6;
        v0(this.fullScreenButton, z6);
        v0(this.minimalFullScreenButton, this.isFullScreen);
        d dVar = this.onFullScreenModeChangedListener;
        if (dVar != null) {
            dVar.j(this.isFullScreen);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(int i10) {
        if (i10 == 0) {
            Y(this.playbackSpeedAdapter, (View) com.google.android.exoplayer2.util.a.e(this.settingsButton));
        } else if (i10 == 1) {
            Y(this.audioTrackSelectionAdapter, (View) com.google.android.exoplayer2.util.a.e(this.settingsButton));
        } else {
            this.settingsWindow.dismiss();
        }
    }

    private boolean q0() {
        d3 d3Var = this.player;
        return (d3Var == null || d3Var.getPlaybackState() == 4 || this.player.getPlaybackState() == 1 || !this.player.getPlayWhenReady()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPlaybackSpeed(float f6) {
        d3 d3Var = this.player;
        if (d3Var == null) {
            return;
        }
        d3Var.b(d3Var.getPlaybackParameters().e(f6));
    }

    private void t0(boolean z6, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z6);
        view.setAlpha(z6 ? this.buttonAlphaEnabled : this.buttonAlphaDisabled);
    }

    private void u0() {
        d3 d3Var = this.player;
        int iJ = (int) ((d3Var != null ? d3Var.j() : 15000L) / 1000);
        TextView textView = this.fastForwardButtonTextView;
        if (textView != null) {
            textView.setText(String.valueOf(iJ));
        }
        View view = this.fastForwardButton;
        if (view != null) {
            view.setContentDescription(this.resources.getQuantityString(s.exo_controls_fastforward_by_amount_description, iJ, Integer.valueOf(iJ)));
        }
    }

    private void v0(@Nullable ImageView imageView, boolean z6) {
        if (imageView == null) {
            return;
        }
        if (z6) {
            imageView.setImageDrawable(this.fullScreenExitDrawable);
            imageView.setContentDescription(this.fullScreenExitContentDescription);
        } else {
            imageView.setImageDrawable(this.fullScreenEnterDrawable);
            imageView.setContentDescription(this.fullScreenEnterContentDescription);
        }
    }

    private static void w0(@Nullable View view, boolean z6) {
        if (view == null) {
            return;
        }
        if (z6) {
            view.setVisibility(0);
        } else {
            view.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z0() {
        d3 d3Var = this.player;
        if (d3Var == null) {
            return;
        }
        this.playbackSpeedAdapter.l(d3Var.getPlaybackParameters().speed);
        this.settingsAdapter.i(0, this.playbackSpeedAdapter.h());
    }

    public void b0() {
        this.controlViewLayoutManager.C();
    }

    public void c0() {
        this.controlViewLayoutManager.F();
    }

    public boolean f0() {
        return this.controlViewLayoutManager.I();
    }

    public boolean getShowShuffleButton() {
        return this.controlViewLayoutManager.A(this.shuffleButton);
    }

    public boolean getShowSubtitleButton() {
        return this.controlViewLayoutManager.A(this.subtitleButton);
    }

    public boolean getShowVrButton() {
        return this.controlViewLayoutManager.A(this.vrButton);
    }

    void i0() {
        Iterator<m> it = this.visibilityListeners.iterator();
        while (it.hasNext()) {
            it.next().onVisibilityChange(getVisibility());
        }
    }

    @Deprecated
    public void m0(m mVar) {
        this.visibilityListeners.remove(mVar);
    }

    void n0() {
        View view = this.playPauseButton;
        if (view != null) {
            view.requestFocus();
        }
    }

    public void r0() {
        this.controlViewLayoutManager.b0();
    }

    public void setAnimationEnabled(boolean z6) {
        this.controlViewLayoutManager.X(z6);
    }

    @Deprecated
    public void setOnFullScreenModeChangedListener(@Nullable d dVar) {
        this.onFullScreenModeChangedListener = dVar;
        w0(this.fullScreenButton, dVar != null);
        w0(this.minimalFullScreenButton, dVar != null);
    }

    public void setRepeatToggleModes(int i10) {
        this.repeatToggleModes = i10;
        d3 d3Var = this.player;
        if (d3Var != null) {
            int repeatMode = d3Var.getRepeatMode();
            if (i10 == 0 && repeatMode != 0) {
                this.player.setRepeatMode(0);
            } else if (i10 == 1 && repeatMode == 2) {
                this.player.setRepeatMode(1);
            } else if (i10 == 2 && repeatMode == 1) {
                this.player.setRepeatMode(2);
            }
        }
        this.controlViewLayoutManager.Y(this.repeatToggleButton, i10 != 0);
        B0();
    }

    public void setShowFastForwardButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.fastForwardButton, z6);
        x0();
    }

    public void setShowMultiWindowTimeBar(boolean z6) {
        this.showMultiWindowTimeBar = z6;
        F0();
    }

    public void setShowNextButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.nextButton, z6);
        x0();
    }

    public void setShowPreviousButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.previousButton, z6);
        x0();
    }

    public void setShowRewindButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.rewindButton, z6);
        x0();
    }

    public void setShowShuffleButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.shuffleButton, z6);
        E0();
    }

    public void setShowSubtitleButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.subtitleButton, z6);
    }

    public void setShowTimeoutMs(int i10) {
        this.showTimeoutMs = i10;
        if (f0()) {
            this.controlViewLayoutManager.W();
        }
    }

    public void setShowVrButton(boolean z6) {
        this.controlViewLayoutManager.Y(this.vrButton, z6);
    }

    public void setTimeBarMinUpdateInterval(int i10) {
        this.timeBarMinUpdateIntervalMs = com.google.android.exoplayer2.util.o0.p(i10, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.vrButton;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            t0(onClickListener != null, this.vrButton);
        }
    }

    public c0(Context context, @Nullable AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0() {
        long contentPosition;
        long jL;
        int playbackState;
        long preferredUpdateDelay;
        if (h0() && this.isAttachedToWindow) {
            d3 d3Var = this.player;
            if (d3Var != null) {
                contentPosition = this.currentWindowOffset + d3Var.getContentPosition();
                jL = this.currentWindowOffset + d3Var.l();
            } else {
                contentPosition = 0;
                jL = 0;
            }
            TextView textView = this.positionView;
            if (textView != null && !this.scrubbing) {
                textView.setText(com.google.android.exoplayer2.util.o0.b0(this.formatBuilder, this.formatter, contentPosition));
            }
            b1 b1Var = this.timeBar;
            if (b1Var != null) {
                b1Var.setPosition(contentPosition);
                this.timeBar.setBufferedPosition(jL);
            }
            removeCallbacks(this.updateProgressAction);
            if (d3Var == null) {
                playbackState = 1;
            } else {
                playbackState = d3Var.getPlaybackState();
            }
            long j6 = 1000;
            if (d3Var != null && d3Var.isPlaying()) {
                b1 b1Var2 = this.timeBar;
                if (b1Var2 != null) {
                    preferredUpdateDelay = b1Var2.getPreferredUpdateDelay();
                } else {
                    preferredUpdateDelay = 1000;
                }
                long jMin = Math.min(preferredUpdateDelay, 1000 - (contentPosition % 1000));
                float f6 = d3Var.getPlaybackParameters().speed;
                if (f6 > 0.0f) {
                    j6 = (long) (jMin / f6);
                }
                postDelayed(this.updateProgressAction, com.google.android.exoplayer2.util.o0.q(j6, this.timeBarMinUpdateIntervalMs, 1000L));
                return;
            }
            if (playbackState != 4 && playbackState != 1) {
                postDelayed(this.updateProgressAction, 1000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0() {
        ImageView imageView;
        if (h0() && this.isAttachedToWindow && (imageView = this.repeatToggleButton) != null) {
            if (this.repeatToggleModes == 0) {
                t0(false, imageView);
                return;
            }
            d3 d3Var = this.player;
            if (d3Var == null) {
                t0(false, imageView);
                this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
                return;
            }
            t0(true, imageView);
            int repeatMode = d3Var.getRepeatMode();
            if (repeatMode != 0) {
                if (repeatMode != 1) {
                    if (repeatMode == 2) {
                        this.repeatToggleButton.setImageDrawable(this.repeatAllButtonDrawable);
                        this.repeatToggleButton.setContentDescription(this.repeatAllButtonContentDescription);
                        return;
                    }
                    return;
                }
                this.repeatToggleButton.setImageDrawable(this.repeatOneButtonDrawable);
                this.repeatToggleButton.setContentDescription(this.repeatOneButtonContentDescription);
                return;
            }
            this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
            this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E0() {
        ImageView imageView;
        Drawable drawable;
        String str;
        if (h0() && this.isAttachedToWindow && (imageView = this.shuffleButton) != null) {
            d3 d3Var = this.player;
            if (!this.controlViewLayoutManager.A(imageView)) {
                t0(false, this.shuffleButton);
                return;
            }
            if (d3Var == null) {
                t0(false, this.shuffleButton);
                this.shuffleButton.setImageDrawable(this.shuffleOffButtonDrawable);
                this.shuffleButton.setContentDescription(this.shuffleOffContentDescription);
                return;
            }
            t0(true, this.shuffleButton);
            ImageView imageView2 = this.shuffleButton;
            if (d3Var.getShuffleModeEnabled()) {
                drawable = this.shuffleOnButtonDrawable;
            } else {
                drawable = this.shuffleOffButtonDrawable;
            }
            imageView2.setImageDrawable(drawable);
            ImageView imageView3 = this.shuffleButton;
            if (d3Var.getShuffleModeEnabled()) {
                str = this.shuffleOnContentDescription;
            } else {
                str = this.shuffleOffContentDescription;
            }
            imageView3.setContentDescription(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0() {
        boolean z6;
        d0();
        if (this.textTrackSelectionAdapter.getItemCount() > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        t0(z6, this.subtitleButton);
    }

    private static boolean T(z3 z3Var, z3.d dVar) {
        if (z3Var.t() > 100) {
            return false;
        }
        int iT = z3Var.t();
        for (int i10 = 0; i10 < iT; i10++) {
            if (z3Var.r(i10, dVar).durationUs == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    private void V(d3 d3Var) {
        d3Var.pause();
    }

    private void W(d3 d3Var) {
        int playbackState = d3Var.getPlaybackState();
        if (playbackState == 1) {
            d3Var.prepare();
        } else if (playbackState == 4) {
            o0(d3Var, d3Var.x(), -9223372036854775807L);
        }
        d3Var.play();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void X(d3 d3Var) {
        int playbackState = d3Var.getPlaybackState();
        if (playbackState != 1 && playbackState != 4 && d3Var.getPlayWhenReady()) {
            V(d3Var);
        } else {
            W(d3Var);
        }
    }

    private void o0(d3 d3Var, int i10, long j6) {
        d3Var.seekTo(i10, j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(d3 d3Var, long j6) {
        int iX;
        z3 currentTimeline = d3Var.getCurrentTimeline();
        if (this.multiWindowTimeBar && !currentTimeline.u()) {
            int iT = currentTimeline.t();
            iX = 0;
            while (true) {
                long jG = currentTimeline.r(iX, this.window).g();
                if (j6 < jG) {
                    break;
                }
                if (iX == iT - 1) {
                    j6 = jG;
                    break;
                } else {
                    j6 -= jG;
                    iX++;
                }
            }
        } else {
            iX = d3Var.x();
        }
        o0(d3Var, iX, j6);
        A0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() {
        boolean zG;
        boolean zG2;
        boolean zG3;
        boolean zG4;
        boolean zG5;
        if (h0() && this.isAttachedToWindow) {
            d3 d3Var = this.player;
            if (d3Var != null) {
                zG = d3Var.g(5);
                zG3 = d3Var.g(7);
                zG4 = d3Var.g(11);
                zG5 = d3Var.g(12);
                zG2 = d3Var.g(9);
            } else {
                zG = false;
                zG2 = false;
                zG3 = false;
                zG4 = false;
                zG5 = false;
            }
            if (zG4) {
                C0();
            }
            if (zG5) {
                u0();
            }
            t0(zG3, this.previousButton);
            t0(zG4, this.rewindButton);
            t0(zG5, this.fastForwardButton);
            t0(zG2, this.nextButton);
            b1 b1Var = this.timeBar;
            if (b1Var != null) {
                b1Var.setEnabled(zG);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y0() {
        if (h0() && this.isAttachedToWindow && this.playPauseButton != null) {
            if (q0()) {
                ((ImageView) this.playPauseButton).setImageDrawable(this.resources.getDrawable(n.exo_styled_controls_pause));
                this.playPauseButton.setContentDescription(this.resources.getString(t.exo_controls_pause_description));
            } else {
                ((ImageView) this.playPauseButton).setImageDrawable(this.resources.getDrawable(n.exo_styled_controls_play));
                this.playPauseButton.setContentDescription(this.resources.getString(t.exo_controls_play_description));
            }
        }
    }

    @Deprecated
    public void S(m mVar) {
        com.google.android.exoplayer2.util.a.e(mVar);
        this.visibilityListeners.add(mVar);
    }

    public boolean U(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        d3 d3Var = this.player;
        if (d3Var != null && g0(keyCode)) {
            if (keyEvent.getAction() == 0) {
                if (keyCode == 90) {
                    if (d3Var.getPlaybackState() != 4) {
                        d3Var.m();
                        return true;
                    }
                    return true;
                }
                if (keyCode == 89) {
                    d3Var.y();
                    return true;
                }
                if (keyEvent.getRepeatCount() == 0) {
                    if (keyCode != 79 && keyCode != 85) {
                        if (keyCode != 87) {
                            if (keyCode != 88) {
                                if (keyCode != 126) {
                                    if (keyCode == 127) {
                                        V(d3Var);
                                        return true;
                                    }
                                    return true;
                                }
                                W(d3Var);
                                return true;
                            }
                            d3Var.o();
                            return true;
                        }
                        d3Var.t();
                        return true;
                    }
                    X(d3Var);
                    return true;
                }
                return true;
            }
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!U(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
            return false;
        }
        return true;
    }

    public boolean h0() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.controlViewLayoutManager.O();
        this.isAttachedToWindow = true;
        if (f0()) {
            this.controlViewLayoutManager.W();
        }
        s0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.controlViewLayoutManager.P();
        this.isAttachedToWindow = false;
        removeCallbacks(this.updateProgressAction);
        this.controlViewLayoutManager.V();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        this.controlViewLayoutManager.Q(z6, i10, i11, i12, i13);
    }

    void s0() {
        y0();
        x0();
        B0();
        E0();
        G0();
        z0();
        F0();
    }

    public void setPlayer(@Nullable d3 d3Var) {
        boolean z6;
        boolean z10 = false;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.g(z6);
        if (d3Var == null || d3Var.s() == Looper.getMainLooper()) {
            z10 = true;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        d3 d3Var2 = this.player;
        if (d3Var2 == d3Var) {
            return;
        }
        if (d3Var2 != null) {
            d3Var2.B(this.componentListener);
        }
        this.player = d3Var;
        if (d3Var != null) {
            d3Var.F(this.componentListener);
        }
        s0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v6, types: [android.view.LayoutInflater] */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v4, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v5, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6, types: [android.widget.TextView] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [android.view.ViewGroup, com.google.android.exoplayer2.ui.c0$a] */
    /* JADX WARN: Type inference failed for: r9v4 */
    public c0(Context context, @Nullable AttributeSet attributeSet, int i10, @Nullable AttributeSet attributeSet2) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        ?? r10;
        boolean z17;
        super(context, attributeSet, i10);
        int resourceId = r.exo_styled_player_control_view;
        this.showTimeoutMs = 5000;
        this.repeatToggleModes = 0;
        this.timeBarMinUpdateIntervalMs = 200;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, v.StyledPlayerControlView, i10, 0);
            try {
                resourceId = typedArrayObtainStyledAttributes.getResourceId(v.StyledPlayerControlView_controller_layout_id, resourceId);
                this.showTimeoutMs = typedArrayObtainStyledAttributes.getInt(v.StyledPlayerControlView_show_timeout, this.showTimeoutMs);
                this.repeatToggleModes = a0(typedArrayObtainStyledAttributes, this.repeatToggleModes);
                boolean z18 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerControlView_show_rewind_button, true);
                boolean z19 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerControlView_show_fastforward_button, true);
                boolean z20 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerControlView_show_previous_button, true);
                boolean z21 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerControlView_show_next_button, true);
                boolean z22 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerControlView_show_shuffle_button, false);
                boolean z23 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerControlView_show_subtitle_button, false);
                boolean z24 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerControlView_show_vr_button, false);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(v.StyledPlayerControlView_time_bar_min_update_interval, this.timeBarMinUpdateIntervalMs));
                boolean z25 = typedArrayObtainStyledAttributes.getBoolean(v.StyledPlayerControlView_animation_enabled, true);
                typedArrayObtainStyledAttributes.recycle();
                z10 = z22;
                z11 = z23;
                z13 = z18;
                z14 = z19;
                z15 = z20;
                z12 = z25;
                z16 = z21;
                z6 = z24;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z6 = false;
            z10 = false;
            z11 = false;
            z12 = true;
            z13 = true;
            z14 = true;
            z15 = true;
            z16 = true;
        }
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        c cVar = new c();
        this.componentListener = cVar;
        this.visibilityListeners = new CopyOnWriteArrayList<>();
        this.period = new z3.b();
        this.window = new z3.d();
        StringBuilder sb = new StringBuilder();
        this.formatBuilder = sb;
        this.formatter = new Formatter(sb, Locale.getDefault());
        this.adGroupTimesMs = new long[0];
        this.playedAdGroups = new boolean[0];
        this.extraAdGroupTimesMs = new long[0];
        this.extraPlayedAdGroups = new boolean[0];
        this.updateProgressAction = new Runnable() { // from class: com.google.android.exoplayer2.ui.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f1337a.A0();
            }
        };
        this.durationView = (TextView) findViewById(p.exo_duration);
        this.positionView = (TextView) findViewById(p.exo_position);
        ImageView imageView = (ImageView) findViewById(p.exo_subtitle);
        this.subtitleButton = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(cVar);
        }
        ImageView imageView2 = (ImageView) findViewById(p.exo_fullscreen);
        this.fullScreenButton = imageView2;
        e0(imageView2, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1312a.j0(view);
            }
        });
        ImageView imageView3 = (ImageView) findViewById(p.exo_minimal_fullscreen);
        this.minimalFullScreenButton = imageView3;
        e0(imageView3, new View.OnClickListener() { // from class: com.google.android.exoplayer2.ui.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f1312a.j0(view);
            }
        });
        View viewFindViewById = findViewById(p.exo_settings);
        this.settingsButton = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(cVar);
        }
        View viewFindViewById2 = findViewById(p.exo_playback_speed);
        this.playbackSpeedButton = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(cVar);
        }
        View viewFindViewById3 = findViewById(p.exo_audio_track);
        this.audioTrackButton = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(cVar);
        }
        int i11 = p.exo_progress;
        b1 b1Var = (b1) findViewById(i11);
        View viewFindViewById4 = findViewById(p.exo_progress_placeholder);
        if (b1Var != null) {
            this.timeBar = b1Var;
            r10 = 0;
        } else if (viewFindViewById4 != null) {
            r10 = 0;
            com.google.android.exoplayer2.ui.h hVar = new com.google.android.exoplayer2.ui.h(context, null, 0, attributeSet2, u.ExoStyledControls_TimeBar);
            hVar.setId(i11);
            hVar.setLayoutParams(viewFindViewById4.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById4.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById4);
            viewGroup.removeView(viewFindViewById4);
            viewGroup.addView(hVar, iIndexOfChild);
            this.timeBar = hVar;
        } else {
            r10 = 0;
            this.timeBar = null;
        }
        b1 b1Var2 = this.timeBar;
        if (b1Var2 != null) {
            b1Var2.a(cVar);
        }
        View viewFindViewById5 = findViewById(p.exo_play_pause);
        this.playPauseButton = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(cVar);
        }
        View viewFindViewById6 = findViewById(p.exo_prev);
        this.previousButton = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(cVar);
        }
        View viewFindViewById7 = findViewById(p.exo_next);
        this.nextButton = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(cVar);
        }
        Typeface typefaceG = ResourcesCompat.g(context, o.roboto_medium_numbers);
        ?? FindViewById = findViewById(p.exo_rew);
        ?? r11 = FindViewById == 0 ? (TextView) findViewById(p.exo_rew_with_amount) : r10;
        this.rewindButtonTextView = r11;
        if (r11 != 0) {
            r11.setTypeface(typefaceG);
        }
        FindViewById = FindViewById == 0 ? r11 : FindViewById;
        this.rewindButton = FindViewById;
        if (FindViewById != 0) {
            FindViewById.setOnClickListener(cVar);
        }
        ?? FindViewById2 = findViewById(p.exo_ffwd);
        ?? r12 = FindViewById2 == 0 ? (TextView) findViewById(p.exo_ffwd_with_amount) : r10;
        this.fastForwardButtonTextView = r12;
        if (r12 != 0) {
            r12.setTypeface(typefaceG);
        }
        FindViewById2 = FindViewById2 == 0 ? r12 : FindViewById2;
        this.fastForwardButton = FindViewById2;
        if (FindViewById2 != 0) {
            FindViewById2.setOnClickListener(cVar);
        }
        ImageView imageView4 = (ImageView) findViewById(p.exo_repeat_toggle);
        this.repeatToggleButton = imageView4;
        if (imageView4 != null) {
            imageView4.setOnClickListener(cVar);
        }
        ImageView imageView5 = (ImageView) findViewById(p.exo_shuffle);
        this.shuffleButton = imageView5;
        if (imageView5 != null) {
            imageView5.setOnClickListener(cVar);
        }
        Resources resources = context.getResources();
        this.resources = resources;
        this.buttonAlphaEnabled = resources.getInteger(q.exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.buttonAlphaDisabled = resources.getInteger(q.exo_media_button_opacity_percentage_disabled) / 100.0f;
        View viewFindViewById8 = findViewById(p.exo_vr);
        this.vrButton = viewFindViewById8;
        if (viewFindViewById8 != null) {
            t0(false, viewFindViewById8);
        }
        v0 v0Var = new v0(this);
        this.controlViewLayoutManager = v0Var;
        v0Var.X(z12);
        h hVar2 = new h(new String[]{resources.getString(t.exo_controls_playback_speed), resources.getString(t.exo_track_selection_title_audio)}, new Drawable[]{resources.getDrawable(n.exo_styled_controls_speed), resources.getDrawable(n.exo_styled_controls_audiotrack)});
        this.settingsAdapter = hVar2;
        this.settingsWindowMargin = resources.getDimensionPixelSize(com.google.android.exoplayer2.ui.m.exo_settings_offset);
        RecyclerView recyclerView = (RecyclerView) LayoutInflater.from(context).inflate(r.exo_styled_settings_list, r10);
        this.settingsView = recyclerView;
        recyclerView.setAdapter(hVar2);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        PopupWindow popupWindow = new PopupWindow((View) recyclerView, -2, -2, true);
        this.settingsWindow = popupWindow;
        if (com.google.android.exoplayer2.util.o0.SDK_INT < 23) {
            z17 = false;
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            z17 = false;
        }
        popupWindow.setOnDismissListener(cVar);
        this.needToHideBars = true;
        this.trackNameProvider = new com.google.android.exoplayer2.ui.i(getResources());
        this.subtitleOnButtonDrawable = resources.getDrawable(n.exo_styled_controls_subtitle_on);
        this.subtitleOffButtonDrawable = resources.getDrawable(n.exo_styled_controls_subtitle_off);
        this.subtitleOnContentDescription = resources.getString(t.exo_controls_cc_enabled_description);
        this.subtitleOffContentDescription = resources.getString(t.exo_controls_cc_disabled_description);
        this.textTrackSelectionAdapter = new j();
        this.audioTrackSelectionAdapter = new b();
        this.playbackSpeedAdapter = new e(resources.getStringArray(com.google.android.exoplayer2.ui.k.exo_controls_playback_speeds), PLAYBACK_SPEEDS);
        this.fullScreenExitDrawable = resources.getDrawable(n.exo_styled_controls_fullscreen_exit);
        this.fullScreenEnterDrawable = resources.getDrawable(n.exo_styled_controls_fullscreen_enter);
        this.repeatOffButtonDrawable = resources.getDrawable(n.exo_styled_controls_repeat_off);
        this.repeatOneButtonDrawable = resources.getDrawable(n.exo_styled_controls_repeat_one);
        this.repeatAllButtonDrawable = resources.getDrawable(n.exo_styled_controls_repeat_all);
        this.shuffleOnButtonDrawable = resources.getDrawable(n.exo_styled_controls_shuffle_on);
        this.shuffleOffButtonDrawable = resources.getDrawable(n.exo_styled_controls_shuffle_off);
        this.fullScreenExitContentDescription = resources.getString(t.exo_controls_fullscreen_exit_description);
        this.fullScreenEnterContentDescription = resources.getString(t.exo_controls_fullscreen_enter_description);
        this.repeatOffButtonContentDescription = resources.getString(t.exo_controls_repeat_off_description);
        this.repeatOneButtonContentDescription = resources.getString(t.exo_controls_repeat_one_description);
        this.repeatAllButtonContentDescription = resources.getString(t.exo_controls_repeat_all_description);
        this.shuffleOnContentDescription = this.resources.getString(t.exo_controls_shuffle_on_description);
        this.shuffleOffContentDescription = this.resources.getString(t.exo_controls_shuffle_off_description);
        this.controlViewLayoutManager.Y((ViewGroup) findViewById(p.exo_bottom_bar), true);
        this.controlViewLayoutManager.Y(this.fastForwardButton, z14);
        this.controlViewLayoutManager.Y(this.rewindButton, z13);
        this.controlViewLayoutManager.Y(this.previousButton, z15);
        this.controlViewLayoutManager.Y(this.nextButton, z16);
        this.controlViewLayoutManager.Y(this.shuffleButton, z10);
        this.controlViewLayoutManager.Y(this.subtitleButton, z11);
        this.controlViewLayoutManager.Y(this.vrButton, z6);
        this.controlViewLayoutManager.Y(this.repeatToggleButton, this.repeatToggleModes != 0 ? true : z17);
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.exoplayer2.ui.b0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                this.f1313a.k0(view, i12, i13, i14, i15, i16, i17, i18, i19);
            }
        });
    }
}
