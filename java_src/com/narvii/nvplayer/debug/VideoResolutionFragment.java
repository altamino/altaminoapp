package com.narvii.nvplayer.debug;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.nvplayer.exoplayer.VideoPreloadDelegate;
import com.narvii.widget.FontAwesomeView;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoResolutionFragment.kt */
/* loaded from: classes3.dex */
public final class VideoResolutionFragment extends NVListFragment {
    private HashMap _$_findViewCache;
    private int currentCond;
    private SharedPreferences prefs;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final int getCurrentCond() {
        return this.currentCond;
    }

    public final void setCurrentCond(int i) {
        this.currentCond = i;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("VideoRes");
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Object service = getService("prefs");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"prefs\")");
        this.prefs = (SharedPreferences) service;
        SharedPreferences sharedPreferences = this.prefs;
        if (sharedPreferences != null) {
            this.currentCond = sharedPreferences.getInt(VideoPreloadDelegate.VIDEO_RES_PREFS_KEY, 0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            throw null;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new MyAdapter(this, this, CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"default", "720P", "360P"}));
    }

    /* compiled from: VideoResolutionFragment.kt */
    public final class MyAdapter extends NVAdapter {
        private final List<String> list;
        final /* synthetic */ VideoResolutionFragment this$0;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyAdapter(VideoResolutionFragment videoResolutionFragment, NVContext context, List<String> list) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(list, "list");
            this.this$0 = videoResolutionFragment;
            this.list = list;
        }

        public final List<String> getList() {
            return this.list;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.list.get(i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.list.size();
        }

        @Override // android.widget.Adapter
        public View getView(final int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.setting_video_auto_play_item, viewGroup, view);
            if (viewCreateView == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout");
            }
            FrameLayout frameLayout = (FrameLayout) viewCreateView;
            View viewFindViewById = frameLayout.findViewById(R.id.text);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "frameLayout.findViewById<TextView>(R.id.text)");
            ((TextView) viewFindViewById).setText(this.list.get(i));
            View viewFindViewById2 = frameLayout.findViewById(R.id.check);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "frameLayout.findViewById…tAwesomeView>(R.id.check)");
            ((FontAwesomeView) viewFindViewById2).setVisibility(this.this$0.getCurrentCond() == i ? 0 : 8);
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nvplayer.debug.VideoResolutionFragment$MyAdapter$getView$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int currentCond = this.this$0.this$0.getCurrentCond();
                    int i2 = i;
                    if (currentCond != i2) {
                        this.this$0.this$0.setCurrentCond(i2);
                        this.this$0.notifyDataSetChanged();
                        NVExoPlayer nVExoPlayer = NVExoPlayer.getInstance(NVApplication.instance());
                        Intrinsics.checkExpressionValueIsNotNull(nVExoPlayer, "NVExoPlayer.getInstance(NVApplication.instance())");
                        nVExoPlayer.getVideoPreloadDelegate().setForceVideoRes(this.this$0.this$0.getCurrentCond());
                    }
                }
            });
            return frameLayout;
        }
    }
}
