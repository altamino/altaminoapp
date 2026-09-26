package com.narvii.nvplayer.debug;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.nvplayer.exoplayer.NVExoPlayer;
import com.narvii.nvplayer.exoplayer.VideoPreloadDelegate;
import com.narvii.widget.FontAwesomeView;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class VideoResolutionFragment extends NVListFragment {
    private int currentCond;
    private SharedPreferences prefs;

    public final class MyAdapter extends NVAdapter {

        @NotNull
        private final List<String> list;
        final /* synthetic */ VideoResolutionFragment this$0;

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @NotNull
        public final List<String> getList() {
            return this.list;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyAdapter(@NotNull VideoResolutionFragment videoResolutionFragment, @NotNull NVContext context, List<String> list) {
            super(context);
            t.j(context, "context");
            t.j(list, "list");
            this.this$0 = videoResolutionFragment;
            this.list = list;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void getView$lambda$0(VideoResolutionFragment this$0, int i10, MyAdapter this$1, View view) {
            t.j(this$0, "this$0");
            t.j(this$1, "this$1");
            if (this$0.getCurrentCond() != i10) {
                this$0.setCurrentCond(i10);
                this$1.notifyDataSetChanged();
                NVExoPlayer.getInstance(NVApplication.instance()).getVideoPreloadDelegate().setForceVideoRes(this$0.getCurrentCond());
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.list.size();
        }

        @Override // android.widget.Adapter
        @NotNull
        public Object getItem(int i10) {
            return this.list.get(i10);
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(final int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.setting_video_auto_play_item, viewGroup, view);
            t.h(viewCreateView, "null cannot be cast to non-null type android.widget.FrameLayout");
            FrameLayout frameLayout = (FrameLayout) viewCreateView;
            ((TextView) frameLayout.findViewById(R.id.text)).setText(this.list.get(i10));
            FontAwesomeView fontAwesomeView = (FontAwesomeView) frameLayout.findViewById(R.id.check);
            if (this.this$0.getCurrentCond() == i10) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            fontAwesomeView.setVisibility(i11);
            final VideoResolutionFragment videoResolutionFragment = this.this$0;
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.nvplayer.debug.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    VideoResolutionFragment.MyAdapter.getView$lambda$0(videoResolutionFragment, i10, this, view2);
                }
            });
            return frameLayout;
        }
    }

    public final int getCurrentCond() {
        return this.currentCond;
    }

    public final void setCurrentCond(int i10) {
        this.currentCond = i10;
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        return new MyAdapter(this, this, v.p("default", "720P", "360P"));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        t.j(context, "context");
        super.onAttach(context);
        Object service = getService(IncubatorApplication.PREFS_SERVICE_KEY);
        t.i(service, "getService(...)");
        SharedPreferences sharedPreferences = (SharedPreferences) service;
        this.prefs = sharedPreferences;
        if (sharedPreferences == null) {
            t.B(IncubatorApplication.PREFS_SERVICE_KEY);
            sharedPreferences = null;
        }
        this.currentCond = sharedPreferences.getInt(VideoPreloadDelegate.VIDEO_RES_PREFS_KEY, 0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setTitle("VideoRes");
    }
}
