package androidx.media3.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.TrackSelectionOverride;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public class TrackSelectionView extends LinearLayout {
    private boolean allowAdaptiveSelections;
    private boolean allowMultipleOverrides;
    private final ComponentListener componentListener;
    private final CheckedTextView defaultView;
    private final CheckedTextView disableView;
    private final LayoutInflater inflater;
    private boolean isDisabled;

    @Nullable
    private TrackSelectionListener listener;
    private final Map<TrackGroup, TrackSelectionOverride> overrides;
    private final int selectableItemBackgroundResourceId;
    private final List<Tracks.Group> trackGroups;

    @Nullable
    private Comparator<TrackInfo> trackInfoComparator;
    private TrackNameProvider trackNameProvider;
    private CheckedTextView[][] trackViews;

    private class ComponentListener implements View.OnClickListener {
        private ComponentListener() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TrackSelectionView.this.c(view);
        }
    }

    private static final class TrackInfo {
        public final Tracks.Group trackGroup;
        public final int trackIndex;

        public Format a() {
            return this.trackGroup.c(this.trackIndex);
        }

        public TrackInfo(Tracks.Group group, int i10) {
            this.trackGroup = group;
            this.trackIndex = i10;
        }
    }

    public interface TrackSelectionListener {
        void a(boolean z6, Map<TrackGroup, TrackSelectionOverride> map);
    }

    public TrackSelectionView(Context context) {
        this(context, null);
    }

    private void d() {
        this.isDisabled = false;
        this.overrides.clear();
    }

    private void e() {
        this.isDisabled = true;
        this.overrides.clear();
    }

    private void f(View view) {
        this.isDisabled = false;
        TrackInfo trackInfo = (TrackInfo) Assertions.e(view.getTag());
        TrackGroup trackGroupB = trackInfo.trackGroup.b();
        int i10 = trackInfo.trackIndex;
        TrackSelectionOverride trackSelectionOverride = this.overrides.get(trackGroupB);
        if (trackSelectionOverride == null) {
            if (!this.allowMultipleOverrides && this.overrides.size() > 0) {
                this.overrides.clear();
            }
            this.overrides.put(trackGroupB, new TrackSelectionOverride(trackGroupB, com.google.common.collect.a0.y(Integer.valueOf(i10))));
            return;
        }
        ArrayList arrayList = new ArrayList(trackSelectionOverride.trackIndices);
        boolean zIsChecked = ((CheckedTextView) view).isChecked();
        boolean zG = g(trackInfo.trackGroup);
        boolean z6 = zG || h();
        if (zIsChecked && z6) {
            arrayList.remove(Integer.valueOf(i10));
            if (arrayList.isEmpty()) {
                this.overrides.remove(trackGroupB);
                return;
            } else {
                this.overrides.put(trackGroupB, new TrackSelectionOverride(trackGroupB, arrayList));
                return;
            }
        }
        if (zIsChecked) {
            return;
        }
        if (!zG) {
            this.overrides.put(trackGroupB, new TrackSelectionOverride(trackGroupB, com.google.common.collect.a0.y(Integer.valueOf(i10))));
        } else {
            arrayList.add(Integer.valueOf(i10));
            this.overrides.put(trackGroupB, new TrackSelectionOverride(trackGroupB, arrayList));
        }
    }

    public boolean getIsDisabled() {
        return this.isDisabled;
    }

    public Map<TrackGroup, TrackSelectionOverride> getOverrides() {
        return this.overrides;
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static Map<TrackGroup, TrackSelectionOverride> b(Map<TrackGroup, TrackSelectionOverride> map, List<Tracks.Group> list, boolean z6) {
        HashMap map2 = new HashMap();
        for (int i10 = 0; i10 < list.size(); i10++) {
            TrackSelectionOverride trackSelectionOverride = map.get(list.get(i10).b());
            if (trackSelectionOverride != null && (z6 || map2.isEmpty())) {
                map2.put(trackSelectionOverride.mediaTrackGroup, trackSelectionOverride);
            }
        }
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(View view) {
        if (view == this.disableView) {
            e();
        } else if (view == this.defaultView) {
            d();
        } else {
            f(view);
        }
        i();
        TrackSelectionListener trackSelectionListener = this.listener;
        if (trackSelectionListener != null) {
            trackSelectionListener.a(getIsDisabled(), getOverrides());
        }
    }

    private boolean g(Tracks.Group group) {
        return this.allowAdaptiveSelections && group.f();
    }

    private boolean h() {
        return this.allowMultipleOverrides && this.trackGroups.size() > 1;
    }

    private void i() {
        this.disableView.setChecked(this.isDisabled);
        this.defaultView.setChecked(!this.isDisabled && this.overrides.size() == 0);
        for (int i10 = 0; i10 < this.trackViews.length; i10++) {
            TrackSelectionOverride trackSelectionOverride = this.overrides.get(this.trackGroups.get(i10).b());
            int i11 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.trackViews[i10];
                if (i11 < checkedTextViewArr.length) {
                    if (trackSelectionOverride != null) {
                        this.trackViews[i10][i11].setChecked(trackSelectionOverride.trackIndices.contains(Integer.valueOf(((TrackInfo) Assertions.e(checkedTextViewArr[i11].getTag())).trackIndex)));
                    } else {
                        checkedTextViewArr[i11].setChecked(false);
                    }
                    i11++;
                }
            }
        }
    }

    public void setAllowAdaptiveSelections(boolean z6) {
        if (this.allowAdaptiveSelections != z6) {
            this.allowAdaptiveSelections = z6;
            j();
        }
    }

    public void setAllowMultipleOverrides(boolean z6) {
        if (this.allowMultipleOverrides != z6) {
            this.allowMultipleOverrides = z6;
            if (!z6 && this.overrides.size() > 1) {
                Map<TrackGroup, TrackSelectionOverride> mapB = b(this.overrides, this.trackGroups, false);
                this.overrides.clear();
                this.overrides.putAll(mapB);
            }
            j();
        }
    }

    public void setShowDisableOption(boolean z6) {
        this.disableView.setVisibility(z6 ? 0 : 8);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10) {
        super(context, attributeSet, i10);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.selectableItemBackground});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.selectableItemBackgroundResourceId = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.inflater = layoutInflaterFrom;
        ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        this.trackNameProvider = new DefaultTrackNameProvider(getResources());
        this.trackGroups = new ArrayList();
        this.overrides = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) layoutInflaterFrom.inflate(android.R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.disableView = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(R.string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(componentListener);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(layoutInflaterFrom.inflate(R.layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) layoutInflaterFrom.inflate(android.R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.defaultView = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(R.string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(componentListener);
        addView(checkedTextView2);
    }

    private void j() {
        int i10;
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.trackGroups.isEmpty()) {
            this.disableView.setEnabled(false);
            this.defaultView.setEnabled(false);
            return;
        }
        this.disableView.setEnabled(true);
        this.defaultView.setEnabled(true);
        this.trackViews = new CheckedTextView[this.trackGroups.size()][];
        boolean zH = h();
        for (int i11 = 0; i11 < this.trackGroups.size(); i11++) {
            Tracks.Group group = this.trackGroups.get(i11);
            boolean zG = g(group);
            CheckedTextView[][] checkedTextViewArr = this.trackViews;
            int i12 = group.length;
            checkedTextViewArr[i11] = new CheckedTextView[i12];
            TrackInfo[] trackInfoArr = new TrackInfo[i12];
            for (int i13 = 0; i13 < group.length; i13++) {
                trackInfoArr[i13] = new TrackInfo(group, i13);
            }
            Comparator<TrackInfo> comparator = this.trackInfoComparator;
            if (comparator != null) {
                Arrays.sort(trackInfoArr, comparator);
            }
            for (int i14 = 0; i14 < i12; i14++) {
                if (i14 == 0) {
                    addView(this.inflater.inflate(R.layout.exo_list_divider, (ViewGroup) this, false));
                }
                if (!zG && !zH) {
                    i10 = android.R.layout.simple_list_item_single_choice;
                } else {
                    i10 = android.R.layout.simple_list_item_multiple_choice;
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.inflater.inflate(i10, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.selectableItemBackgroundResourceId);
                checkedTextView.setText(this.trackNameProvider.a(trackInfoArr[i14].a()));
                checkedTextView.setTag(trackInfoArr[i14]);
                if (group.j(i14)) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.componentListener);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.trackViews[i11][i14] = checkedTextView;
                addView(checkedTextView);
            }
        }
        i();
    }

    public void setTrackNameProvider(TrackNameProvider trackNameProvider) {
        this.trackNameProvider = (TrackNameProvider) Assertions.e(trackNameProvider);
        j();
    }
}
