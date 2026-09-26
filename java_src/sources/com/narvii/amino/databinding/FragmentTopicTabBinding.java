package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.lib.databinding.PostEntryBinding;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.paging.state.PageStatusView;
import com.narvii.topic.widgets.TopicSubscribeView;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NVViewPager;
import com.narvii.widget.recycleview.NVRecyclerView;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentTopicTabBinding implements ViewBinding {

    @NonNull
    public final NVAppBarLayout appbarLayout;

    @NonNull
    public final LinearLayout bodyContent;

    @NonNull
    public final FlexLayout coordinateTopContent;

    @NonNull
    public final LinearLayout dynamicHeader;

    @NonNull
    public final LinearLayout onlineMemberContainer;

    @NonNull
    public final TextView onlineMemberCount;

    @NonNull
    public final PageStatusView pageStatus;

    @NonNull
    public final PostEntryBinding postEntryView;

    @NonNull
    public final NVRecyclerView recycleLayout;

    @NonNull
    private final SwipeRefreshLayout rootView;

    @NonNull
    public final SwipeRefreshLayout swipeRefreshLayout;

    @NonNull
    public final NVPagerTabLayout tabs;

    @NonNull
    public final NVImageView topicBackground;

    @NonNull
    public final TopicSubscribeView topicBookmark;

    @NonNull
    public final AutoSizingTextView topicTitle;

    @NonNull
    public final TextView topicTitleTop;

    @NonNull
    public final NVViewPager viewpager;

    private FragmentTopicTabBinding(@NonNull SwipeRefreshLayout swipeRefreshLayout, @NonNull NVAppBarLayout nVAppBarLayout, @NonNull LinearLayout linearLayout, @NonNull FlexLayout flexLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull PageStatusView pageStatusView, @NonNull PostEntryBinding postEntryBinding, @NonNull NVRecyclerView nVRecyclerView, @NonNull SwipeRefreshLayout swipeRefreshLayout2, @NonNull NVPagerTabLayout nVPagerTabLayout, @NonNull NVImageView nVImageView, @NonNull TopicSubscribeView topicSubscribeView, @NonNull AutoSizingTextView autoSizingTextView, @NonNull TextView textView2, @NonNull NVViewPager nVViewPager) {
        this.rootView = swipeRefreshLayout;
        this.appbarLayout = nVAppBarLayout;
        this.bodyContent = linearLayout;
        this.coordinateTopContent = flexLayout;
        this.dynamicHeader = linearLayout2;
        this.onlineMemberContainer = linearLayout3;
        this.onlineMemberCount = textView;
        this.pageStatus = pageStatusView;
        this.postEntryView = postEntryBinding;
        this.recycleLayout = nVRecyclerView;
        this.swipeRefreshLayout = swipeRefreshLayout2;
        this.tabs = nVPagerTabLayout;
        this.topicBackground = nVImageView;
        this.topicBookmark = topicSubscribeView;
        this.topicTitle = autoSizingTextView;
        this.topicTitleTop = textView2;
        this.viewpager = nVViewPager;
    }

    @NonNull
    public static FragmentTopicTabBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public SwipeRefreshLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentTopicTabBinding bind(@NonNull View view) {
        int i10 = R.id.appbar_layout;
        NVAppBarLayout nVAppBarLayout = (NVAppBarLayout) ViewBindings.a(view, R.id.appbar_layout);
        if (nVAppBarLayout != null) {
            i10 = R.id.body_content;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.body_content);
            if (linearLayout != null) {
                i10 = R.id.coordinate_top_content;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.coordinate_top_content);
                if (flexLayout != null) {
                    i10 = R.id.dynamic_header;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.dynamic_header);
                    if (linearLayout2 != null) {
                        i10 = R.id.online_member_container;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.online_member_container);
                        if (linearLayout3 != null) {
                            i10 = R.id.online_member_count;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.online_member_count);
                            if (textView != null) {
                                i10 = R.id.page_status;
                                PageStatusView pageStatusView = (PageStatusView) ViewBindings.a(view, R.id.page_status);
                                if (pageStatusView != null) {
                                    i10 = R.id.post_entry_view;
                                    View viewA = ViewBindings.a(view, R.id.post_entry_view);
                                    if (viewA != null) {
                                        PostEntryBinding postEntryBindingBind = PostEntryBinding.bind(viewA);
                                        i10 = R.id.recycle_layout;
                                        NVRecyclerView nVRecyclerView = (NVRecyclerView) ViewBindings.a(view, R.id.recycle_layout);
                                        if (nVRecyclerView != null) {
                                            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view;
                                            i10 = R.id.tabs;
                                            NVPagerTabLayout nVPagerTabLayout = (NVPagerTabLayout) ViewBindings.a(view, R.id.tabs);
                                            if (nVPagerTabLayout != null) {
                                                i10 = R.id.topic_background;
                                                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.topic_background);
                                                if (nVImageView != null) {
                                                    i10 = R.id.topic_bookmark;
                                                    TopicSubscribeView topicSubscribeView = (TopicSubscribeView) ViewBindings.a(view, R.id.topic_bookmark);
                                                    if (topicSubscribeView != null) {
                                                        i10 = R.id.topic_title;
                                                        AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.topic_title);
                                                        if (autoSizingTextView != null) {
                                                            i10 = R.id.topic_title_top;
                                                            TextView textView2 = (TextView) ViewBindings.a(view, R.id.topic_title_top);
                                                            if (textView2 != null) {
                                                                i10 = R.id.viewpager;
                                                                NVViewPager nVViewPager = (NVViewPager) ViewBindings.a(view, R.id.viewpager);
                                                                if (nVViewPager != null) {
                                                                    return new FragmentTopicTabBinding(swipeRefreshLayout, nVAppBarLayout, linearLayout, flexLayout, linearLayout2, linearLayout3, textView, pageStatusView, postEntryBindingBind, nVRecyclerView, swipeRefreshLayout, nVPagerTabLayout, nVImageView, topicSubscribeView, autoSizingTextView, textView2, nVViewPager);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FragmentTopicTabBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_topic_tab, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
