package com.narvii.scene;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.PagerSnapHelper;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SnapHelper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
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
import com.narvii.widget.EasyButton;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: TemplateListFragment.kt */
/* loaded from: classes3.dex */
public final class TemplateListFragment extends NVRecyclerViewFragment implements View.OnClickListener {
    public static final Companion Companion = new Companion(null);
    public static final int FROM_BLOG_PROMOTE = 1;
    public static final int FROM_SCENE_EDITOR = 2;
    private HashMap _$_findViewCache;
    private boolean autoPlaying;
    public TextView desc;
    private boolean isShowing;
    public LinearLayoutManager linearLayoutManager;
    private OnChooseTemplateListener onChooseTemplateListener;
    private int scrollX;
    public TextView title;
    private final List<TemplateConfig> templateList = new ArrayList();
    private final PageLoadState pageLoadState = new PageLoadState();
    private final double animRate = 0.12d;
    private int selectedPosition = -1;
    private int from = 2;
    private final Function2<View, Float, Unit> scaleIncrease = new Function2<View, Float, Unit>() { // from class: com.narvii.scene.TemplateListFragment$scaleIncrease$1
        {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(View view, Float f) {
            invoke(view, f.floatValue());
            return Unit.INSTANCE;
        }

        public final void invoke(View v, float f) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            double d = 1;
            double animRate = this.this$0.getAnimRate();
            Double.isNaN(d);
            double animRate2 = this.this$0.getAnimRate();
            double d2 = f;
            Double.isNaN(d2);
            v.setScaleX((float) ((d - animRate) + (animRate2 * d2)));
            double animRate3 = this.this$0.getAnimRate();
            Double.isNaN(d);
            double d3 = d - animRate3;
            double animRate4 = this.this$0.getAnimRate();
            Double.isNaN(d2);
            v.setScaleY((float) (d3 + (animRate4 * d2)));
        }
    };
    private final Function2<View, Float, Unit> scaleDecrease = new Function2<View, Float, Unit>() { // from class: com.narvii.scene.TemplateListFragment$scaleDecrease$1
        {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(View view, Float f) {
            invoke(view, f.floatValue());
            return Unit.INSTANCE;
        }

        public final void invoke(View v, float f) {
            Intrinsics.checkParameterIsNotNull(v, "v");
            double d = 1;
            double animRate = this.this$0.getAnimRate();
            double d2 = f;
            Double.isNaN(d2);
            Double.isNaN(d);
            v.setScaleX((float) (d - (animRate * d2)));
            double animRate2 = this.this$0.getAnimRate();
            Double.isNaN(d2);
            Double.isNaN(d);
            v.setScaleY((float) (d - (animRate2 * d2)));
        }
    };

    /* compiled from: TemplateListFragment.kt */
    public interface OnChooseTemplateListener {
        void onChoose(TemplateConfig templateConfig);

        void onDismiss();
    }

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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "VideoTemplatePicker";
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

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.setting.VideoAutoPlayChangeListener
    public void videoAutoPlayChange(int i) {
    }

    /* compiled from: TemplateListFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final List<TemplateConfig> getTemplateList() {
        return this.templateList;
    }

    public final PageLoadState getPageLoadState() {
        return this.pageLoadState;
    }

    public final int getScrollX() {
        return this.scrollX;
    }

    public final void setScrollX(int i) {
        this.scrollX = i;
    }

    public final OnChooseTemplateListener getOnChooseTemplateListener() {
        return this.onChooseTemplateListener;
    }

    public final void setOnChooseTemplateListener(OnChooseTemplateListener onChooseTemplateListener) {
        this.onChooseTemplateListener = onChooseTemplateListener;
    }

    public final double getAnimRate() {
        return this.animRate;
    }

    public final int getSelectedPosition() {
        return this.selectedPosition;
    }

    public final void setSelectedPosition(int i) {
        this.selectedPosition = i;
    }

    public final boolean isShowing() {
        return this.isShowing;
    }

    public final void setShowing(boolean z) {
        this.isShowing = z;
    }

    public final int getFrom() {
        return this.from;
    }

    public final void setFrom(int i) {
        this.from = i;
    }

    public final boolean getAutoPlaying() {
        return this.autoPlaying;
    }

    public final void setAutoPlaying(boolean z) {
        this.autoPlaying = z;
    }

    public final LinearLayoutManager getLinearLayoutManager() {
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        if (linearLayoutManager != null) {
            return linearLayoutManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("linearLayoutManager");
        throw null;
    }

    public final void setLinearLayoutManager(LinearLayoutManager linearLayoutManager) {
        Intrinsics.checkParameterIsNotNull(linearLayoutManager, "<set-?>");
        this.linearLayoutManager = linearLayoutManager;
    }

    public final TextView getTitle() {
        TextView textView = this.title;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("title");
        throw null;
    }

    public final void setTitle(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.title = textView;
    }

    public final TextView getDesc() {
        TextView textView = this.desc;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("desc");
        throw null;
    }

    public final void setDesc(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.desc = textView;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.from = getIntParam("from", bundle);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_scene_template, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IOException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        View viewFindViewById = view.findViewById(R.id.promote_title);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.promote_title)");
        this.title = (TextView) viewFindViewById;
        View viewFindViewById2 = view.findViewById(R.id.promote_desc);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById(R.id.promote_desc)");
        this.desc = (TextView) viewFindViewById2;
        view.findViewById(R.id.cancel).setOnClickListener(new OnPreventRepeatedClickListener(this) { // from class: com.narvii.scene.TemplateListFragment.onViewCreated.1
        });
        view.findViewById(R.id.choose).setOnClickListener(new OnPreventRepeatedClickListener(this) { // from class: com.narvii.scene.TemplateListFragment.onViewCreated.2
        });
        this.recyclerView.addItemDecoration(new HorizontalItemDecoration());
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.narvii.scene.TemplateListFragment.onViewCreated.3
            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                super.onScrolled(recyclerView, i, i2);
                if (Utils.isRtl()) {
                    TemplateListFragment templateListFragment = TemplateListFragment.this;
                    templateListFragment.setScrollX(templateListFragment.getScrollX() - i);
                } else {
                    TemplateListFragment templateListFragment2 = TemplateListFragment.this;
                    templateListFragment2.setScrollX(templateListFragment2.getScrollX() + i);
                }
                int itemContentWidth = (int) (TemplateListFragment.this.getItemContentWidth() + Utils.dpToPx(TemplateListFragment.this.getContext(), 30.0f));
                TemplateListFragment templateListFragment3 = TemplateListFragment.this;
                TemplateListFragment.this.setAnimation(templateListFragment3.getPosition(templateListFragment3.getScrollX(), itemContentWidth), (TemplateListFragment.this.getScrollX() / itemContentWidth) - ((int) r4));
            }

            @Override // android.support.v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
                super.onScrollStateChanged(recyclerView, i);
                if (i == 0) {
                    View viewFindSnapView = ((NVRecyclerViewFragment) TemplateListFragment.this).snapHelper.findSnapView(TemplateListFragment.this.getLinearLayoutManager());
                    TemplateListFragment templateListFragment = TemplateListFragment.this;
                    templateListFragment.setSelectedPosition(viewFindSnapView != null ? templateListFragment.getLinearLayoutManager().getPosition(viewFindSnapView) : -1);
                    TemplateListFragment.this.updateTitle();
                }
            }
        });
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        InputStream inputStreamOpen = context.getAssets().open("templateConfigList.json");
        TemplatesWrapper templatesWrapper = (TemplatesWrapper) JacksonUtils.DEFAULT_MAPPER.readValue(inputStreamOpen, TemplatesWrapper.class);
        inputStreamOpen.close();
        this.templateList.clear();
        List<TemplateConfig> list = this.templateList;
        List<TemplateConfig> list2 = templatesWrapper.templateConfigList;
        Intrinsics.checkExpressionValueIsNotNull(list2, "templatesWrapper.templateConfigList");
        list.addAll(list2);
        this.pageLoadState.status = 1;
        if (this.templateList.size() > 0) {
            this.selectedPosition = 0;
        }
        updateViews();
        updateTitle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setAnimation(int i, float f) {
        View viewFindViewByPosition;
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        View viewFindViewByPosition2 = null;
        if (linearLayoutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("linearLayoutManager");
            throw null;
        }
        View viewFindViewByPosition3 = linearLayoutManager.findViewByPosition(i);
        if (i > 0) {
            LinearLayoutManager linearLayoutManager2 = this.linearLayoutManager;
            if (linearLayoutManager2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("linearLayoutManager");
                throw null;
            }
            viewFindViewByPosition = linearLayoutManager2.findViewByPosition(i - 1);
        } else {
            viewFindViewByPosition = null;
        }
        if (i < this.templateList.size() - 1) {
            LinearLayoutManager linearLayoutManager3 = this.linearLayoutManager;
            if (linearLayoutManager3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("linearLayoutManager");
                throw null;
            }
            viewFindViewByPosition2 = linearLayoutManager3.findViewByPosition(i + 1);
        }
        if (f < 0.5d) {
            if (viewFindViewByPosition != null) {
                TemplateListFragmentKt.animation(viewFindViewByPosition, f, this.scaleIncrease);
            }
            if (viewFindViewByPosition3 != null) {
                TemplateListFragmentKt.animation(viewFindViewByPosition3, f, this.scaleDecrease);
            }
            if (viewFindViewByPosition2 != null) {
                TemplateListFragmentKt.animation(viewFindViewByPosition2, f, this.scaleIncrease);
                return;
            }
            return;
        }
        if (viewFindViewByPosition != null) {
            TemplateListFragmentKt.animation(viewFindViewByPosition, f, this.scaleDecrease);
        }
        if (viewFindViewByPosition3 != null) {
            TemplateListFragmentKt.animation(viewFindViewByPosition3, f, this.scaleIncrease);
        }
        if (viewFindViewByPosition2 != null) {
            TemplateListFragmentKt.animation(viewFindViewByPosition2, f, this.scaleDecrease);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getPosition(int i, int i2) {
        return MathKt__MathJVMKt.roundToInt(i / i2);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected SnapHelper createSnapHelper() {
        return new PagerSnapHelper();
    }

    private final void sendRequest() {
        this.pageLoadState.status = 0;
        updateViews();
        ((ApiService) getService("api")).exec(ApiRequest.builder().https().global().path("/asset/story-template").build(), new ApiResponseListener<TemplateResponse>(TemplateResponse.class) { // from class: com.narvii.scene.TemplateListFragment.sendRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, TemplateResponse templateResponse) throws Exception {
                List<TemplateConfig> list;
                super.onFinish(apiRequest, (ApiRequest) templateResponse);
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
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                TemplateListFragment.this.getPageLoadState().status = 2;
                TemplateListFragment.this.updateViews();
            }
        });
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public void updateViews() {
        super.updateViews();
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTitle() {
        if (this.from == 1) {
            TextView textView = this.title;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("title");
                throw null;
            }
            textView.setText(R.string.promote_your_post);
            TextView textView2 = this.desc;
            if (textView2 != null) {
                textView2.setText(R.string.choose_a_story_template);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("desc");
                throw null;
            }
        }
        TextView textView3 = this.title;
        if (textView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("title");
            throw null;
        }
        textView3.setText(R.string.choose_video_template);
        int i = this.selectedPosition;
        if (i < 0 || i >= this.templateList.size()) {
            return;
        }
        TemplateConfig templateConfig = this.templateList.get(this.selectedPosition);
        TextView textView4 = this.desc;
        if (textView4 != null) {
            textView4.setText(getString(R.string.select_photos, Integer.valueOf(templateConfig.minInputCount), Integer.valueOf(templateConfig.maxInputCount)));
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("desc");
            throw null;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this, this);
    }

    /* compiled from: TemplateListFragment.kt */
    public final class Adapter extends NVRecyclerViewBaseAdapter {
        final /* synthetic */ TemplateListFragment this$0;

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i, PageRequestCallback pageRequestCallback) {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(TemplateListFragment templateListFragment, NVContext context) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = templateListFragment;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            TemplateListFragment templateListFragment = this.this$0;
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_scene_template, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(getC…_template, parent, false)");
            return new TemplateViewHolder(templateListFragment, viewInflate);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.this$0.getTemplateList().size();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof TemplateViewHolder) {
                ((TemplateViewHolder) holder).updateData(getItem(i));
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public TemplateConfig getItem(int i) {
            return this.this$0.getTemplateList().get(i);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public String getErrorMessage() {
            String str = this.this$0.getPageLoadState().errorMessage;
            return str != null ? str : "";
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean isLoading() {
            return this.this$0.getPageLoadState().status == 0;
        }
    }

    /* compiled from: TemplateListFragment.kt */
    public final class TemplateViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
        private final ThumbImageView coverImage;
        private TemplateConfig template;
        final /* synthetic */ TemplateListFragment this$0;
        private final NVImageView videoPlayButton;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TemplateViewHolder(TemplateListFragment templateListFragment, View view) {
            super(view);
            Intrinsics.checkParameterIsNotNull(view, "view");
            this.this$0 = templateListFragment;
            this.coverImage = (ThumbImageView) this.itemView.findViewById(R.id.cover_image);
            this.videoPlayButton = (NVImageView) this.itemView.findViewById(R.id.video_play_button);
            this.coverImage.setOnClickListener(this);
        }

        public final ThumbImageView getCoverImage() {
            return this.coverImage;
        }

        public final NVImageView getVideoPlayButton() {
            return this.videoPlayButton;
        }

        public final TemplateConfig getTemplate() {
            return this.template;
        }

        public final void setTemplate(TemplateConfig templateConfig) {
            this.template = templateConfig;
        }

        public final void updateData(TemplateConfig template) {
            Intrinsics.checkParameterIsNotNull(template, "template");
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

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            INVPlayer nvPlayer = NVPlayerManager.getNVPlayer(NVApplication.instance());
            Intrinsics.checkExpressionValueIsNotNull(nvPlayer, "nvPlayer");
            if (!nvPlayer.getPlayWhenReady()) {
                this.this$0.setAutoPlaying(true);
                IVideoListDelegate videoListDelegate = this.this$0.getVideoListDelegate();
                if (videoListDelegate == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.nvplayerview.delegate.NVVideoListDelegate");
                }
                ((NVVideoListDelegate) videoListDelegate).refreshPlayerPosition();
                return;
            }
            nvPlayer.setPlayWhenReady(!nvPlayer.getPlayWhenReady());
            this.this$0.setAutoPlaying(nvPlayer.getPlayWhenReady());
        }
    }

    public final void hide() {
        onActiveChanged(false);
        this.isShowing = false;
        this.autoPlaying = false;
    }

    public final void show() {
        this.isShowing = true;
        INVPlayer nVPlayer = NVPlayerManager.getNVPlayer(NVApplication.instance());
        if (nVPlayer != null) {
            nVPlayer.setVolume(1.0f);
        }
        onActiveChanged(true);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        IVideoListDelegate videoListDelegate;
        if (this.isShowing) {
            super.onActiveChanged(z);
            if (z || getVideoListDelegate() == null || (videoListDelegate = getVideoListDelegate()) == null) {
                return;
            }
            videoListDelegate.resetVideoView();
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new TemplateDemoVideoListDelegate(this, this, getActivity());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i = R.id.choose;
        if (numValueOf != null && numValueOf.intValue() == i) {
            int i2 = this.selectedPosition;
            if (i2 < 0 || i2 >= this.templateList.size()) {
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
        int i3 = R.id.cancel;
        if (numValueOf != null && numValueOf.intValue() == i3) {
            LogEvent.clickBuilder(this, ActSemantic.cancel).area("Cancel").send();
            OnChooseTemplateListener onChooseTemplateListener2 = this.onChooseTemplateListener;
            if (onChooseTemplateListener2 != null) {
                onChooseTemplateListener2.onDismiss();
            }
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public RecyclerView.LayoutManager createLayoutManager() {
        this.linearLayoutManager = new LinearLayoutManager(getContext(), 0, false);
        LinearLayoutManager linearLayoutManager = this.linearLayoutManager;
        if (linearLayoutManager != null) {
            return linearLayoutManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("linearLayoutManager");
        throw null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected void updateVideoAutoPlay() {
        this.videoAutoPlay = true;
    }

    /* compiled from: TemplateListFragment.kt */
    public final class HorizontalItemDecoration extends RecyclerView.ItemDecoration {
        public HorizontalItemDecoration() {
        }

        @Override // android.support.v7.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
            int iDpToPx;
            int iDpToPx2;
            Intrinsics.checkParameterIsNotNull(outRect, "outRect");
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            Intrinsics.checkParameterIsNotNull(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            int size = TemplateListFragment.this.getTemplateList().size();
            if (childAdapterPosition == 0) {
                iDpToPx = (Utils.getScreenWidth(TemplateListFragment.this.getContext()) - TemplateListFragment.this.getItemContentWidth()) / 2;
            } else {
                iDpToPx = (int) Utils.dpToPx(NVApplication.instance(), 15.0f);
            }
            if (childAdapterPosition == size - 1) {
                iDpToPx2 = (Utils.getScreenWidth(TemplateListFragment.this.getContext()) - TemplateListFragment.this.getItemContentWidth()) / 2;
            } else {
                iDpToPx2 = (int) Utils.dpToPx(NVApplication.instance(), 15.0f);
            }
            if (!Utils.isRtl()) {
                int i = iDpToPx;
                iDpToPx = iDpToPx2;
                iDpToPx2 = i;
            }
            outRect.set(iDpToPx2, 0, iDpToPx, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getItemContentWidth() {
        NVRecyclerView nVRecyclerView = this.recyclerView;
        double height = nVRecyclerView != null ? nVRecyclerView.getHeight() : 0;
        Double.isNaN(height);
        return (int) (height * 0.56d);
    }

    /* compiled from: TemplateListFragment.kt */
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
        public TemplateDemoVideoListDelegate(TemplateListFragment templateListFragment, NVContext context, Activity activity) {
            super(context, activity);
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = templateListFragment;
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        protected void initVideoView() {
            this.mVideoView.init(this, 1);
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        protected IVideoController initVideoController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
            return this.this$0.new TemplateVideoListController(context, nVContext, nVVideoView, iNVPlayer);
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        public void refreshPlayerPosition() {
            if (shouldPlay()) {
                super.refreshPlayerPosition();
            }
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        protected boolean shouldPlay() {
            return this.this$0.getAutoPlaying();
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        protected void addVideoView(ViewGroup viewGroup, NVVideoView nVVideoView, ViewGroup.LayoutParams layoutParams) {
            NVImageView nVImageView;
            super.addVideoView(viewGroup, nVVideoView, layoutParams);
            if (viewGroup == null || (nVImageView = (NVImageView) viewGroup.findViewById(R.id.video_play_button)) == null) {
                return;
            }
            nVImageView.setVisibility(8);
        }

        @Override // com.narvii.nvplayerview.delegate.NVVideoListDelegate
        public void removeVideoView() {
            ViewGroup viewGroup;
            NVImageView nVImageView;
            NVVideoView videoView = getVideoView();
            if (videoView != null && (viewGroup = (ViewGroup) videoView.getParent()) != null && (nVImageView = (NVImageView) viewGroup.findViewById(R.id.video_play_button)) != null) {
                nVImageView.setVisibility(0);
            }
            super.removeVideoView();
        }
    }

    /* compiled from: TemplateListFragment.kt */
    public final class TemplateVideoListController extends NVVideoListController {
        public TemplateVideoListController(Context context, NVContext nVContext, NVVideoView nVVideoView, INVPlayer iNVPlayer) {
            super(context, nVContext, nVVideoView, iNVPlayer);
        }

        @Override // com.narvii.nvplayerview.controller.NVVideoListController
        protected void setVolumeImg() {
            this.mPlayer.setVolume(1.0f);
            EasyButton volumeBtn = this.volumeBtn;
            Intrinsics.checkExpressionValueIsNotNull(volumeBtn, "volumeBtn");
            volumeBtn.setVisibility(8);
        }

        @Override // com.narvii.nvplayerview.controller.NVVideoListController, com.narvii.nvplayerview.controller.IVideoController
        public void onPlayerStateChanged(boolean z, int i) {
            int i2 = 8;
            if (i == 2) {
                SpinningView mLoadingView = this.mLoadingView;
                Intrinsics.checkExpressionValueIsNotNull(mLoadingView, "mLoadingView");
                if (mLoadingView.getVisibility() != 0) {
                    SpinningView mLoadingView2 = this.mLoadingView;
                    Intrinsics.checkExpressionValueIsNotNull(mLoadingView2, "mLoadingView");
                    mLoadingView2.setVisibility(0);
                    NVImageView videoPlayButton = this.videoPlayButton;
                    Intrinsics.checkExpressionValueIsNotNull(videoPlayButton, "videoPlayButton");
                    videoPlayButton.setVisibility(8);
                }
                LinearLayout mErrorView = this.mErrorView;
                if (mErrorView != null) {
                    Intrinsics.checkExpressionValueIsNotNull(mErrorView, "mErrorView");
                    if (mErrorView.getVisibility() == 0) {
                        LinearLayout mErrorView2 = this.mErrorView;
                        Intrinsics.checkExpressionValueIsNotNull(mErrorView2, "mErrorView");
                        mErrorView2.setVisibility(4);
                    }
                }
            }
            if (i == 3) {
                NVImageView videoPlayButton2 = this.videoPlayButton;
                Intrinsics.checkExpressionValueIsNotNull(videoPlayButton2, "videoPlayButton");
                if (!z) {
                    SpinningView mLoadingView3 = this.mLoadingView;
                    Intrinsics.checkExpressionValueIsNotNull(mLoadingView3, "mLoadingView");
                    if (mLoadingView3.getVisibility() == 4) {
                        i2 = 0;
                    }
                }
                videoPlayButton2.setVisibility(i2);
                SpinningView mLoadingView4 = this.mLoadingView;
                Intrinsics.checkExpressionValueIsNotNull(mLoadingView4, "mLoadingView");
                if (mLoadingView4.getVisibility() != 4) {
                    SpinningView mLoadingView5 = this.mLoadingView;
                    Intrinsics.checkExpressionValueIsNotNull(mLoadingView5, "mLoadingView");
                    mLoadingView5.setVisibility(4);
                }
            }
        }

        @Override // com.narvii.nvplayerview.controller.NVVideoListController, com.narvii.nvplayerview.controller.IVideoController
        public void onPlayerError(NVVideoException nVVideoException) {
            super.onPlayerError(nVVideoException);
            NVImageView videoPlayButton = this.videoPlayButton;
            Intrinsics.checkExpressionValueIsNotNull(videoPlayButton, "videoPlayButton");
            videoPlayButton.setVisibility(8);
        }
    }

    public final int getIntParam(String key, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return bundle != null ? bundle.getInt(key) : getIntParam(key);
    }
}
