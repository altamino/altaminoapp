package com.narvii.scene;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.mediaeditor.R;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.nvplayer.INVPlayer;
import com.narvii.nvplayer.NVPlayerManager;
import com.narvii.nvplayer.NVVideoException;
import com.narvii.nvplayerview.NVVideoView;
import com.narvii.nvplayerview.controller.IVideoController;
import com.narvii.nvplayerview.controller.NVVideoListController;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.state.PageLoadState;
import com.narvii.scene.model.TemplateConfig;
import com.narvii.scene.template.response.TemplateResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.OnPreventRepeatedClickListener;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.videotemplate.TemplatesWrapper;
import com.narvii.widget.NVImageView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.recycleview.NVRecyclerView;
import e8.p;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class TemplateListFragment extends NVRecyclerViewFragment implements View.OnClickListener {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int FROM_BLOG_PROMOTE = 1;
    public static final int FROM_SCENE_EDITOR = 2;
    private boolean autoPlaying;
    public TextView desc;
    private boolean isShowing;
    public LinearLayoutManager linearLayoutManager;

    @Nullable
    private OnChooseTemplateListener onChooseTemplateListener;
    private int scrollX;
    public TextView title;

    @NotNull
    private final List<TemplateConfig> templateList = new ArrayList();

    @NotNull
    private final PageLoadState pageLoadState = new PageLoadState();
    private final double animRate = 0.12d;
    private int selectedPosition = -1;
    private int from = 2;

    @NotNull
    private final p<View, Float, l0> scaleIncrease = new TemplateListFragment$scaleIncrease$1(this);

    @NotNull
    private final p<View, Float, l0> scaleDecrease = new TemplateListFragment$scaleDecrease$1(this);

    public final class Adapter extends NVRecyclerViewBaseAdapter {
        final /* synthetic */ TemplateListFragment this$0;

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i10, @Nullable PageRequestCallback pageRequestCallback) {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull TemplateListFragment templateListFragment, NVContext context) {
            super(context);
            t.j(context, "context");
            this.this$0 = templateListFragment;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        @NotNull
        public String getErrorMessage() {
            String str = this.this$0.getPageLoadState().errorMessage;
            return str == null ? "" : str;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        @NotNull
        public TemplateConfig getItem(int i10) {
            return this.this$0.getTemplateList().get(i10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.getTemplateList().size();
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isLoading() {
            return this.this$0.getPageLoadState().status == 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            t.j(holder, "holder");
            if (holder instanceof TemplateViewHolder) {
                ((TemplateViewHolder) holder).updateData(getItem(i10));
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            TemplateListFragment templateListFragment = this.this$0;
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_scene_template, parent, false);
            t.i(viewInflate, "inflate(...)");
            return new TemplateViewHolder(templateListFragment, viewInflate);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class HorizontalItemDecoration extends RecyclerView.ItemDecoration {
        public HorizontalItemDecoration() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@NotNull Rect outRect, @NotNull View view, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
            t.j(outRect, "outRect");
            t.j(view, "view");
            t.j(parent, "parent");
            t.j(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            int size = TemplateListFragment.this.getTemplateList().size();
            int screenWidth = childAdapterPosition == 0 ? (Utils.getScreenWidth(TemplateListFragment.this.getContext()) - TemplateListFragment.this.getItemContentWidth()) / 2 : (int) Utils.dpToPx(NVApplication.instance(), 15.0f);
            int screenWidth2 = childAdapterPosition == size + (-1) ? (Utils.getScreenWidth(TemplateListFragment.this.getContext()) - TemplateListFragment.this.getItemContentWidth()) / 2 : (int) Utils.dpToPx(NVApplication.instance(), 15.0f);
            if (Utils.isRtl()) {
                int i10 = screenWidth;
                screenWidth = screenWidth2;
                screenWidth2 = i10;
            }
            outRect.set(screenWidth, 0, screenWidth2, 0);
        }
    }

    public interface OnChooseTemplateListener {
        void onChoose(@NotNull TemplateConfig templateConfig);

        void onDismiss();
    }

    public final class TemplateDemoVideoListDelegate extends NVVideoListDelegate {
        final /* synthetic */ TemplateListFragment this$0;

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        protected int getVisibilityPercentage() {
            return 60;
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        protected boolean vertical() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TemplateDemoVideoListDelegate(@NotNull TemplateListFragment templateListFragment, @Nullable NVContext context, Activity activity) {
            super(context, activity);
            t.j(context, "context");
            this.this$0 = templateListFragment;
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        @NotNull
        protected IVideoController initVideoController(@Nullable Context context, @Nullable NVContext nVContext, @Nullable NVVideoView nVVideoView, @Nullable INVPlayer iNVPlayer) {
            return this.this$0.new TemplateVideoListController(context, nVContext, nVVideoView, iNVPlayer);
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        protected void initVideoView() {
            this.mVideoView.init(this, 1);
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        protected boolean shouldPlay() {
            return this.this$0.getAutoPlaying();
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        protected void addVideoView(@Nullable ViewGroup viewGroup, @Nullable NVVideoView nVVideoView, @Nullable ViewGroup.LayoutParams layoutParams) {
            NVImageView nVImageView;
            super.addVideoView(viewGroup, nVVideoView, layoutParams);
            if (viewGroup != null) {
                nVImageView = (NVImageView) viewGroup.findViewById(R.id.video_play_button);
            } else {
                nVImageView = null;
            }
            if (nVImageView != null) {
                nVImageView.setVisibility(8);
            }
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        public void refreshPlayerPosition() {
            if (shouldPlay()) {
                super.refreshPlayerPosition();
            }
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        public void removeVideoView() {
            NVImageView nVImageView;
            NVVideoView videoView = getVideoView();
            if (videoView != null) {
                ViewGroup viewGroup = (ViewGroup) videoView.getParent();
                if (viewGroup != null) {
                    nVImageView = (NVImageView) viewGroup.findViewById(R.id.video_play_button);
                } else {
                    nVImageView = null;
                }
                if (nVImageView != null) {
                    nVImageView.setVisibility(0);
                }
            }
            super.removeVideoView();
        }
    }

    public final class TemplateVideoListController extends NVVideoListController {
        @Override // com.narvii.nvplayerview.controller.NVVideoListController, com.narvii.nvplayerview.controller.IVideoController
        public void onPlayerStateChanged(boolean z6, int i10) {
            int i11 = 8;
            if (i10 == 2) {
                if (this.mLoadingView.getVisibility() != 0) {
                    this.mLoadingView.setVisibility(0);
                    this.videoPlayButton.setVisibility(8);
                }
                LinearLayout linearLayout = this.mErrorView;
                if (linearLayout != null && linearLayout.getVisibility() == 0) {
                    this.mErrorView.setVisibility(4);
                }
            }
            if (i10 == 3) {
                NVImageView nVImageView = this.videoPlayButton;
                if (!z6 && this.mLoadingView.getVisibility() == 4) {
                    i11 = 0;
                }
                nVImageView.setVisibility(i11);
                if (this.mLoadingView.getVisibility() != 4) {
                    this.mLoadingView.setVisibility(4);
                }
            }
        }

        public TemplateVideoListController(@Nullable Context context, @Nullable NVContext nVContext, @Nullable NVVideoView nVVideoView, INVPlayer iNVPlayer) {
            super(context, nVContext, nVVideoView, iNVPlayer);
        }

        @Override // com.narvii.nvplayerview.controller.NVVideoListController
        protected void setVolumeImg() {
            this.mPlayer.setVolume(1.0f);
            this.volumeBtn.setVisibility(8);
        }

        @Override // com.narvii.nvplayerview.controller.NVVideoListController, com.narvii.nvplayerview.controller.IVideoController
        public void onPlayerError(@Nullable NVVideoException nVVideoException) {
            super.onPlayerError(nVVideoException);
            this.videoPlayButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getPosition(int i10, int i11) {
        return g8.c.c(i10 / i11);
    }

    public final double getAnimRate() {
        return this.animRate;
    }

    public final boolean getAutoPlaying() {
        return this.autoPlaying;
    }

    public final int getFrom() {
        return this.from;
    }

    @Nullable
    public final OnChooseTemplateListener getOnChooseTemplateListener() {
        return this.onChooseTemplateListener;
    }

    @NotNull
    public final PageLoadState getPageLoadState() {
        return this.pageLoadState;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "video_template_picker";
    }

    public final int getScrollX() {
        return this.scrollX;
    }

    public final int getSelectedPosition() {
        return this.selectedPosition;
    }

    @NotNull
    public final List<TemplateConfig> getTemplateList() {
        return this.templateList;
    }

    public final void hide() {
        onActiveChanged(false);
        this.isShowing = false;
        this.autoPlaying = false;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isFinalPage() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected boolean isRefreshEnable() {
        return false;
    }

    public final boolean isShowing() {
        return this.isShowing;
    }

    public final void setAutoPlaying(boolean z6) {
        this.autoPlaying = z6;
    }

    public final void setDesc(@NotNull TextView textView) {
        t.j(textView, "<set-?>");
        this.desc = textView;
    }

    public final void setFrom(int i10) {
        this.from = i10;
    }

    public final void setLinearLayoutManager(@NotNull LinearLayoutManager linearLayoutManager) {
        t.j(linearLayoutManager, "<set-?>");
        this.linearLayoutManager = linearLayoutManager;
    }

    public final void setOnChooseTemplateListener(@Nullable OnChooseTemplateListener onChooseTemplateListener) {
        this.onChooseTemplateListener = onChooseTemplateListener;
    }

    public final void setScrollX(int i10) {
        this.scrollX = i10;
    }

    public final void setSelectedPosition(int i10) {
        this.selectedPosition = i10;
    }

    public final void setShowing(boolean z6) {
        this.isShowing = z6;
    }

    public final void setTitle(@NotNull TextView textView) {
        t.j(textView, "<set-?>");
        this.title = textView;
    }

    public final void show() {
        this.isShowing = true;
        INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(NVApplication.instance());
        if (nVPlayer != null) {
            nVPlayer.setVolume(1.0f);
        }
        onActiveChanged(true);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected void updateVideoAutoPlay() {
        this.videoAutoPlay = true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.setting.VideoAutoPlayChangeListener
    public void videoAutoPlayChange(int i10) {
    }

    public final class TemplateViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private final ThumbImageView coverImage;

        @Nullable
        private TemplateConfig template;
        final /* synthetic */ TemplateListFragment this$0;
        private final NVImageView videoPlayButton;

        public final ThumbImageView getCoverImage() {
            return this.coverImage;
        }

        @Nullable
        public final TemplateConfig getTemplate() {
            return this.template;
        }

        public final NVImageView getVideoPlayButton() {
            return this.videoPlayButton;
        }

        public final void setTemplate(@Nullable TemplateConfig templateConfig) {
            this.template = templateConfig;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TemplateViewHolder(@NotNull TemplateListFragment templateListFragment, View view) {
            super(view);
            t.j(view, "view");
            this.this$0 = templateListFragment;
            ThumbImageView thumbImageView = (ThumbImageView) this.itemView.findViewById(R.id.cover_image);
            this.coverImage = thumbImageView;
            this.videoPlayButton = (NVImageView) this.itemView.findViewById(R.id.video_play_button);
            thumbImageView.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@Nullable View view) {
            INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(NVApplication.instance());
            if (!nVPlayer.getPlayWhenReady()) {
                this.this$0.setAutoPlaying(true);
                IVideoListDelegate videoListDelegate = this.this$0.getVideoListDelegate();
                t.h(videoListDelegate, "null cannot be cast to non-null type com.narvii.nvplayerview.delegate.NVVideoListDelegate");
                ((NVVideoListDelegate) videoListDelegate).refreshPlayerPosition();
                return;
            }
            nVPlayer.setPlayWhenReady(!nVPlayer.getPlayWhenReady());
            this.this$0.setAutoPlaying(nVPlayer.getPlayWhenReady());
        }

        public final void updateData(@NotNull TemplateConfig template) {
            t.j(template, "template");
            this.template = template;
            this.coverImage.setImageUrl(template.coverImageUrl);
            Media media = new Media();
            String str = template.coverImageUrl;
            media.url = str;
            media.coverImage = str;
            media.type = 100;
            Media media2 = new Media();
            media2.url = template.previewVideoUrl;
            media2.coverImage = template.coverImageUrl;
            media2.type = 102;
            NVVideoListDelegate.markVideoCell(this.itemView, R.id.cover_image, media2, media, (NVObject) null, 1, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getItemContentWidth() {
        NVRecyclerView nVRecyclerView = this.recyclerView;
        return (int) (((double) (nVRecyclerView != null ? nVRecyclerView.getHeight() : 0)) * 0.56d);
    }

    private final void sendRequest() {
        this.pageLoadState.status = 0;
        updateViews();
        ((ApiService) getService("api")).exec(ApiRequest.builder().https().global().path("/asset/story-template").build(), new ApiResponseListener<TemplateResponse>(TemplateResponse.class) { // from class: com.narvii.scene.TemplateListFragment.sendRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable TemplateResponse templateResponse) throws Exception {
                List<TemplateConfig> list;
                super.onFinish(apiRequest, templateResponse);
                TemplateListFragment.this.getTemplateList().clear();
                if (templateResponse != null && (list = templateResponse.storyTemplateList) != null) {
                    TemplateListFragment.this.getTemplateList().addAll(list);
                }
                TemplateListFragment.this.getPageLoadState().status = 1;
                if (TemplateListFragment.this.getTemplateList().size() > 0) {
                    TemplateListFragment.this.setSelectedPosition(0);
                }
                TemplateListFragment.this.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                TemplateListFragment.this.getPageLoadState().status = 2;
                TemplateListFragment.this.updateViews();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTitle() {
        if (this.from == 1) {
            getTitle().setText(R.string.promote_your_post);
            getDesc().setText(R.string.choose_a_story_template);
            return;
        }
        getTitle().setText(R.string.choose_video_template);
        int i10 = this.selectedPosition;
        if (i10 < 0 || i10 >= this.templateList.size()) {
            return;
        }
        TemplateConfig templateConfig = this.templateList.get(this.selectedPosition);
        getDesc().setText(getString(R.string.select_photos, Integer.valueOf(templateConfig.minInputCount), Integer.valueOf(templateConfig.maxInputCount)));
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this, this);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    public RecyclerView.LayoutManager createLayoutManager() {
        setLinearLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        return getLinearLayoutManager();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected SnapHelper createSnapHelper() {
        return new PagerSnapHelper();
    }

    @NotNull
    public final TextView getDesc() {
        TextView textView = this.desc;
        if (textView != null) {
            return textView;
        }
        t.B("desc");
        return null;
    }

    public final int getIntParam(@NotNull String key, @Nullable Bundle bundle) {
        t.j(key, "key");
        return bundle != null ? bundle.getInt(key) : getIntParam(key);
    }

    @NotNull
    public final LinearLayoutManager getLinearLayoutManager() {
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        if (linearLayoutManager != null) {
            return linearLayoutManager;
        }
        t.B("linearLayoutManager");
        return null;
    }

    @NotNull
    public final TextView getTitle() {
        TextView textView = this.title;
        if (textView != null) {
            return textView;
        }
        t.B("title");
        return null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected IVideoListDelegate initVideoListDelegate() {
        return new TemplateDemoVideoListDelegate(this, this, getActivity());
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        IVideoListDelegate videoListDelegate;
        if (this.isShowing) {
            super.onActiveChanged(z6);
            if (z6 || getVideoListDelegate() == null || (videoListDelegate = getVideoListDelegate()) == null) {
                return;
            }
            videoListDelegate.resetVideoView();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i10 = R.id.choose;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            int i11 = this.selectedPosition;
            if (i11 < 0 || i11 >= this.templateList.size()) {
                return;
            }
            LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Choose").extraParam("templateId", this.templateList.get(this.selectedPosition).templateId).send();
            OnChooseTemplateListener onChooseTemplateListener = this.onChooseTemplateListener;
            if (onChooseTemplateListener != null) {
                onChooseTemplateListener.onChoose(this.templateList.get(this.selectedPosition));
                return;
            }
            return;
        }
        int i12 = R.id.cancel;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            LogEvent.clickBuilder(this, ActSemantic.cancel).area("Cancel").send();
            OnChooseTemplateListener onChooseTemplateListener2 = this.onChooseTemplateListener;
            if (onChooseTemplateListener2 != null) {
                onChooseTemplateListener2.onDismiss();
            }
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_scene_template, viewGroup, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setAnimation(int i10, float f) {
        View viewFindViewByPosition;
        View viewFindViewByPosition2 = getLinearLayoutManager().findViewByPosition(i10);
        View viewFindViewByPosition3 = null;
        if (i10 > 0) {
            viewFindViewByPosition = getLinearLayoutManager().findViewByPosition(i10 - 1);
        } else {
            viewFindViewByPosition = null;
        }
        if (i10 < this.templateList.size() - 1) {
            viewFindViewByPosition3 = getLinearLayoutManager().findViewByPosition(i10 + 1);
        }
        if (f < 0.5d) {
            if (viewFindViewByPosition != null) {
                TemplateListFragmentKt.animation(viewFindViewByPosition, f, this.scaleIncrease);
            }
            if (viewFindViewByPosition2 != null) {
                TemplateListFragmentKt.animation(viewFindViewByPosition2, f, this.scaleDecrease);
            }
            if (viewFindViewByPosition3 != null) {
                TemplateListFragmentKt.animation(viewFindViewByPosition3, f, this.scaleIncrease);
                return;
            }
            return;
        }
        if (viewFindViewByPosition != null) {
            TemplateListFragmentKt.animation(viewFindViewByPosition, f, this.scaleDecrease);
        }
        if (viewFindViewByPosition2 != null) {
            TemplateListFragmentKt.animation(viewFindViewByPosition2, f, this.scaleIncrease);
        }
        if (viewFindViewByPosition3 != null) {
            TemplateListFragmentKt.animation(viewFindViewByPosition3, f, this.scaleDecrease);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.from = getIntParam("from", bundle);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) throws IOException {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.promote_title);
        t.i(viewFindViewById, "findViewById(...)");
        setTitle((TextView) viewFindViewById);
        View viewFindViewById2 = view.findViewById(R.id.promote_desc);
        t.i(viewFindViewById2, "findViewById(...)");
        setDesc((TextView) viewFindViewById2);
        view.findViewById(R.id.cancel).setOnClickListener(new OnPreventRepeatedClickListener(this) { // from class: com.narvii.scene.TemplateListFragment.onViewCreated.1
            {
                super(this);
            }
        });
        view.findViewById(R.id.choose).setOnClickListener(new OnPreventRepeatedClickListener(this) { // from class: com.narvii.scene.TemplateListFragment.onViewCreated.2
            {
                super(this);
            }
        });
        this.recyclerView.addItemDecoration(new HorizontalItemDecoration());
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.scene.TemplateListFragment.onViewCreated.3
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(@NotNull RecyclerView recyclerView, int i10) {
                t.j(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, i10);
                if (i10 == 0) {
                    View viewH = ((NVRecyclerViewFragment) TemplateListFragment.this).snapHelper.h(TemplateListFragment.this.getLinearLayoutManager());
                    TemplateListFragment templateListFragment = TemplateListFragment.this;
                    templateListFragment.setSelectedPosition(viewH != null ? templateListFragment.getLinearLayoutManager().getPosition(viewH) : -1);
                    TemplateListFragment.this.updateTitle();
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NotNull RecyclerView recyclerView, int i10, int i11) {
                t.j(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, i10, i11);
                if (Utils.isRtl()) {
                    TemplateListFragment templateListFragment = TemplateListFragment.this;
                    templateListFragment.setScrollX(templateListFragment.getScrollX() - i10);
                } else {
                    TemplateListFragment templateListFragment2 = TemplateListFragment.this;
                    templateListFragment2.setScrollX(templateListFragment2.getScrollX() + i10);
                }
                int itemContentWidth = (int) (TemplateListFragment.this.getItemContentWidth() + Utils.dpToPx(TemplateListFragment.this.getContext(), 30.0f));
                TemplateListFragment templateListFragment3 = TemplateListFragment.this;
                int position = templateListFragment3.getPosition(templateListFragment3.getScrollX(), itemContentWidth);
                float scrollX = TemplateListFragment.this.getScrollX() / itemContentWidth;
                TemplateListFragment.this.setAnimation(position, scrollX - ((int) scrollX));
            }
        });
        Context context = getContext();
        t.g(context);
        InputStream inputStreamOpen = context.getAssets().open("templateConfigList.json");
        t.i(inputStreamOpen, "open(...)");
        TemplatesWrapper templatesWrapper = (TemplatesWrapper) JacksonUtils.DEFAULT_MAPPER.readValue(inputStreamOpen, TemplatesWrapper.class);
        inputStreamOpen.close();
        this.templateList.clear();
        List<TemplateConfig> list = this.templateList;
        List<TemplateConfig> templateConfigList = templatesWrapper.templateConfigList;
        t.i(templateConfigList, "templateConfigList");
        list.addAll(templateConfigList);
        this.pageLoadState.status = 1;
        if (this.templateList.size() > 0) {
            this.selectedPosition = 0;
        }
        updateViews();
        updateTitle();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public void updateViews() {
        super.updateViews();
        this.adapter.notifyDataSetChanged();
    }
}
