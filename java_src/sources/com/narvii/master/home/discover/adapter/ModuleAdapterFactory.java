package com.narvii.master.home.discover.adapter;

import android.content.Intent;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatModuleListFramgment;
import com.narvii.community.CommunityListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.MasterHelper;
import com.narvii.model.Community;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.TopicListFragment;
import com.narvii.topic.TopicTabFragment;
import com.narvii.topic.TopicTabFragmentKt;
import com.narvii.topic.adapter.CommunityModuleHorizontalAdapter;
import com.narvii.topic.adapter.MedRecAdAdapter;
import com.narvii.topic.adapter.MyCommunityListModuleAdapter;
import com.narvii.topic.adapter.MyCommunityModuleHorizontalAdapter;
import com.narvii.topic.adapter.PostListAdapter;
import com.narvii.topic.adapter.RecentCommunityModuleHorizontalAdapter;
import com.narvii.topic.discover.CommunityListModuleAdapter;
import com.narvii.topic.model.CommunityDataSourceCarrier;
import com.narvii.topic.model.discover.ContentModule;
import com.narvii.topic.model.discover.ModuleAnchorAdapter;
import com.narvii.topic.picker.AggregationTopicFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class ModuleAdapterFactory {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String LISTVIEW_ENTER_SOURCE_MORE = "moreButton";

    @NotNull
    public static final String LISTVIEW_ENTER_SOURCE_TITLE = "moduleTitle";

    @NotNull
    private static final String REMOTE_MED_REC_AD_APPEARANCE = "android_discover_screen_ad_appearance";

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private final List<NVRecyclerViewBaseAdapter> addGridTopicAdapter(final NVContext nVContext, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            GridTopicCardAdapter gridTopicCardAdapter = new GridTopicCardAdapter(nVContext, contentModule);
            TopicTitleAdapter topicTitleAdapter = new TopicTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
            topicTitleAdapter.setHost(gridTopicCardAdapter);
            arrayList.add(topicTitleAdapter);
            RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(nVContext, 0, 0, 0, Utils.dpToPxInt(nVContext.getContext(), 15.0f));
            recyclerViewColumnAdapter.setAdapter(gridTopicCardAdapter, 3);
            arrayList.add(recyclerViewColumnAdapter);
            topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModuleAdapterFactory.Companion.addGridTopicAdapter$lambda$3(nVContext, contentModule, view);
                }
            });
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) {
                ShowAllStoryAdapter showAllStoryAdapter = new ShowAllStoryAdapter(nVContext, 6);
                showAllStoryAdapter.setHost(gridTopicCardAdapter);
                arrayList.add(showAllStoryAdapter);
                showAllStoryAdapter.setClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.n
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.addGridTopicAdapter$lambda$4(nVContext, contentModule, view);
                    }
                });
            }
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(gridTopicCardAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        private Companion() {
        }

        private final List<NVRecyclerViewBaseAdapter> addAdsBannerAdapter(int i10, NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            AdsModuleHorizontalAdapter adsModuleHorizontalAdapter;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            if (kotlin.jvm.internal.t.e(contentModule.getDisplayStyle(), ContentModule.STYLE_BANNER_SIZE_MEDIUM)) {
                adsModuleHorizontalAdapter = new AdsModuleHorizontalAdapter(nVContext, contentModule, moduleDisplayConfig);
            } else {
                CardTopAdapter cardTopAdapter = i10 != 0 ? new CardTopAdapter(nVContext, null, 2, null) : null;
                HeaderAdsModuleHorizontalAdapter headerAdsModuleHorizontalAdapter = new HeaderAdsModuleHorizontalAdapter(nVContext, contentModule, moduleDisplayConfig);
                if (cardTopAdapter != null) {
                    arrayList.add(cardTopAdapter);
                    cardTopAdapter.setHost(headerAdsModuleHorizontalAdapter);
                }
                adsModuleHorizontalAdapter = headerAdsModuleHorizontalAdapter;
            }
            arrayList.add(adsModuleHorizontalAdapter);
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(adsModuleHorizontalAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        private final List<NVRecyclerViewBaseAdapter> addChatCardAdapter(final NVContext nVContext, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            TopicTitleAdapter topicTitleAdapter = new TopicTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
            RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(nVContext, Utils.dpToPxInt(nVContext.getContext(), 15.0f), 0, 0, 0);
            GeneralChatCardAdapter generalChatCardAdapter = new GeneralChatCardAdapter(nVContext, contentModule, moduleDisplayConfig);
            recyclerViewColumnAdapter.setAdapter(generalChatCardAdapter, 2);
            topicTitleAdapter.setHost(recyclerViewColumnAdapter);
            arrayList.add(topicTitleAdapter);
            arrayList.add(recyclerViewColumnAdapter);
            topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModuleAdapterFactory.Companion.addChatCardAdapter$lambda$0(nVContext, contentModule, view);
                }
            });
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) {
                ShowAllStoryAdapter showAllStoryAdapter = new ShowAllStoryAdapter(nVContext, 4);
                showAllStoryAdapter.setHost(generalChatCardAdapter);
                showAllStoryAdapter.setClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.l
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.addChatCardAdapter$lambda$1(nVContext, contentModule, view);
                    }
                });
                arrayList.add(showAllStoryAdapter);
            }
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(recyclerViewColumnAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addChatCardAdapter$lambda$0(NVContext ctx, ContentModule module, View view) {
            kotlin.jvm.internal.t.j(ctx, "$ctx");
            kotlin.jvm.internal.t.j(module, "$module");
            Companion companion = ModuleAdapterFactory.Companion;
            companion.clickShowAllLog(ctx, module, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
            companion.showMoreChat(module, ctx);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addChatCardAdapter$lambda$1(NVContext ctx, ContentModule module, View view) {
            kotlin.jvm.internal.t.j(ctx, "$ctx");
            kotlin.jvm.internal.t.j(module, "$module");
            Companion companion = ModuleAdapterFactory.Companion;
            companion.clickShowAllLog(ctx, module, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
            companion.showMoreChat(module, ctx);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v10, types: [T, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.topic.discover.CommunityListModuleAdapter] */
        /* JADX WARN: Type inference failed for: r0v5, types: [T, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.topic.adapter.CommunityModuleHorizontalAdapter, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v16, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v17, types: [T, java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v3, types: [T, java.util.ArrayList] */
        private final List<NVRecyclerViewBaseAdapter> addCommunityModule(final NVContext nVContext, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            if (contentModule.isJoinedCommunity()) {
                return addMyCommunityModule(nVContext, contentModule, moduleDisplayConfig);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            TopicTitleAdapter topicTitleAdapter = new TopicTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
            final p0 p0Var = new p0();
            final p0 p0Var2 = new p0();
            final p0 p0Var3 = new p0();
            if (kotlin.jvm.internal.t.e(contentModule.style, ContentModule.STYLE_GRID_COMMUNITY_CARD)) {
                ?? communityListModuleAdapter = new CommunityListModuleAdapter(nVContext, contentModule, moduleDisplayConfig);
                RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(nVContext, nVContext.getContext().getResources().getDimensionPixelOffset(R.dimen.discover_cell_padding), 0);
                recyclerViewColumnAdapter.setAdapter(communityListModuleAdapter, 3);
                topicTitleAdapter.setHost(recyclerViewColumnAdapter);
                arrayList.add(topicTitleAdapter);
                arrayList.add(recyclerViewColumnAdapter);
                p0Var.element = communityListModuleAdapter.getLastPageToken();
                p0Var2.element = communityListModuleAdapter.getCommunityList();
                p0Var3.element = communityListModuleAdapter;
            } else {
                ?? communityModuleHorizontalAdapter = new CommunityModuleHorizontalAdapter(nVContext, contentModule, moduleDisplayConfig);
                topicTitleAdapter.setHost(communityModuleHorizontalAdapter);
                arrayList.add(topicTitleAdapter);
                arrayList.add(communityModuleHorizontalAdapter);
                p0Var.element = communityModuleHorizontalAdapter.getLastPageToken();
                p0Var2.element = communityModuleHorizontalAdapter.getCommunityList();
                p0Var3.element = communityModuleHorizontalAdapter;
            }
            topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModuleAdapterFactory.Companion.addCommunityModule$lambda$5(nVContext, contentModule, p0Var3, p0Var2, p0Var, view);
                }
            });
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) {
                ShowAllStoryAdapter showAllStoryAdapter = new ShowAllStoryAdapter(nVContext, 6);
                showAllStoryAdapter.setHost((NVRecyclerViewBaseAdapter) p0Var3.element);
                showAllStoryAdapter.setClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.i
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.addCommunityModule$lambda$6(nVContext, contentModule, p0Var2, p0Var, view);
                    }
                });
                arrayList.add(showAllStoryAdapter);
            }
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost((NVRecyclerViewBaseAdapter) p0Var3.element);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [T, java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r4v5, types: [T, java.lang.String] */
        public static final void addCommunityModule$lambda$5(NVContext ctx, ContentModule module, p0 hostAdapter, p0 list, p0 token, View view) {
            kotlin.jvm.internal.t.j(ctx, "$ctx");
            kotlin.jvm.internal.t.j(module, "$module");
            kotlin.jvm.internal.t.j(hostAdapter, "$hostAdapter");
            kotlin.jvm.internal.t.j(list, "$list");
            kotlin.jvm.internal.t.j(token, "$token");
            Companion companion = ModuleAdapterFactory.Companion;
            companion.clickShowAllLog(ctx, module, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
            T t5 = hostAdapter.element;
            if (t5 instanceof CommunityDataSourceCarrier) {
                list.element = ((CommunityDataSourceCarrier) t5).getCommunityList();
                token.element = ((CommunityDataSourceCarrier) hostAdapter.element).getLastPageToken();
            }
            companion.showMoreCommunity((ArrayList) list.element, (String) token.element, module, ctx);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final void addCommunityModule$lambda$6(NVContext ctx, ContentModule module, p0 list, p0 token, View view) {
            kotlin.jvm.internal.t.j(ctx, "$ctx");
            kotlin.jvm.internal.t.j(module, "$module");
            kotlin.jvm.internal.t.j(list, "$list");
            kotlin.jvm.internal.t.j(token, "$token");
            Companion companion = ModuleAdapterFactory.Companion;
            companion.clickShowAllLog(ctx, module, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
            companion.showMoreCommunity((ArrayList) list.element, (String) token.element, module, ctx);
        }

        private final List<NVRecyclerViewBaseAdapter> addCommunityThumbnailAdapter(NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            RecentCommunityModuleHorizontalAdapter recentCommunityModuleHorizontalAdapter = new RecentCommunityModuleHorizontalAdapter(nVContext, contentModule, moduleDisplayConfig);
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(recentCommunityModuleHorizontalAdapter);
            arrayList.add(recentCommunityModuleHorizontalAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        private final List<NVRecyclerViewBaseAdapter> addCreateCommunityButtonAdapter(NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            CreateCommunityButtonAdapter createCommunityButtonAdapter = new CreateCommunityButtonAdapter(nVContext, contentModule);
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(createCommunityButtonAdapter);
            arrayList.add(createCommunityButtonAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        private final List<NVRecyclerViewBaseAdapter> addDiscoverTopicButtonAdapter(NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            TopicButtonAdapter topicButtonAdapter = new TopicButtonAdapter(nVContext, contentModule);
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(topicButtonAdapter);
            arrayList.add(topicButtonAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addGridTopicAdapter$lambda$3(NVContext ctx, ContentModule module, View view) {
            kotlin.jvm.internal.t.j(ctx, "$ctx");
            kotlin.jvm.internal.t.j(module, "$module");
            Companion companion = ModuleAdapterFactory.Companion;
            companion.clickShowAllLog(ctx, module, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
            companion.showMoreTopic(module, ctx);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addGridTopicAdapter$lambda$4(NVContext ctx, ContentModule module, View view) {
            kotlin.jvm.internal.t.j(ctx, "$ctx");
            kotlin.jvm.internal.t.j(module, "$module");
            Companion companion = ModuleAdapterFactory.Companion;
            companion.clickShowAllLog(ctx, module, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
            companion.showMoreTopic(module, ctx);
        }

        private final List<NVRecyclerViewBaseAdapter> addHeaderLinePostsAdapter(NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            TopicTitleAdapter topicTitleAdapter = new TopicTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
            PostListAdapter postListAdapter = new PostListAdapter(nVContext, contentModule, moduleDisplayConfig);
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(postListAdapter);
            topicTitleAdapter.setHost(postListAdapter);
            arrayList.add(topicTitleAdapter);
            arrayList.add(postListAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        private final List<NVRecyclerViewBaseAdapter> addMyCommunityModule(final NVContext nVContext, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            NVRecyclerViewBaseAdapter myCommunityModuleHorizontalAdapter;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            TopicTitleAdapter topicTitleAdapter = new TopicTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
            if (kotlin.jvm.internal.t.e(contentModule.style, ContentModule.STYLE_GRID_COMMUNITY_CARD)) {
                myCommunityModuleHorizontalAdapter = new MyCommunityListModuleAdapter(nVContext, contentModule, moduleDisplayConfig);
                RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(nVContext, nVContext.getContext().getResources().getDimensionPixelOffset(R.dimen.discover_cell_padding), 0);
                recyclerViewColumnAdapter.setAdapter(myCommunityModuleHorizontalAdapter, 3);
                topicTitleAdapter.setHost(recyclerViewColumnAdapter);
                arrayList.add(topicTitleAdapter);
                arrayList.add(recyclerViewColumnAdapter);
            } else {
                myCommunityModuleHorizontalAdapter = new MyCommunityModuleHorizontalAdapter(nVContext, contentModule, moduleDisplayConfig);
                topicTitleAdapter.setHost(myCommunityModuleHorizontalAdapter);
                arrayList.add(topicTitleAdapter);
                arrayList.add(myCommunityModuleHorizontalAdapter);
            }
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) {
                ShowAllStoryAdapter showAllStoryAdapter = new ShowAllStoryAdapter(nVContext, 6);
                showAllStoryAdapter.setHost(myCommunityModuleHorizontalAdapter);
                showAllStoryAdapter.setClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.addMyCommunityModule$lambda$7(nVContext, contentModule, view);
                    }
                });
                arrayList.add(showAllStoryAdapter);
            }
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(myCommunityModuleHorizontalAdapter);
            arrayList.add(cardBottomAdapter);
            topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModuleAdapterFactory.Companion.addMyCommunityModule$lambda$8(nVContext, contentModule, view);
                }
            });
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addMyCommunityModule$lambda$7(NVContext ctx, ContentModule module, View view) {
            kotlin.jvm.internal.t.j(ctx, "$ctx");
            kotlin.jvm.internal.t.j(module, "$module");
            Companion companion = ModuleAdapterFactory.Companion;
            companion.clickShowAllLog(ctx, module, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
            companion.jumpToMyCommunityPage(ctx);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addMyCommunityModule$lambda$8(NVContext ctx, ContentModule module, View view) {
            kotlin.jvm.internal.t.j(ctx, "$ctx");
            kotlin.jvm.internal.t.j(module, "$module");
            Companion companion = ModuleAdapterFactory.Companion;
            companion.clickShowAllLog(ctx, module, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
            companion.jumpToMyCommunityPage(ctx);
        }

        private final List<NVRecyclerViewBaseAdapter> addTopicCardAdapter(final NVContext nVContext, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            TopicModuleHorizontalAdapter topicModuleHorizontalAdapter = new TopicModuleHorizontalAdapter(nVContext, contentModule, moduleDisplayConfig);
            if (kotlin.jvm.internal.t.e(contentModule.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS) && moduleDisplayConfig != null && moduleDisplayConfig.isTop) {
                TopicTopAdapter topicTopAdapter = new TopicTopAdapter(nVContext, moduleDisplayConfig);
                topicTopAdapter.setHost(topicModuleHorizontalAdapter);
                arrayList.add(topicTopAdapter);
            } else {
                TopicTitleAdapter topicTitleAdapter = new TopicTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
                topicTitleAdapter.setHost(topicModuleHorizontalAdapter);
                arrayList.add(topicTitleAdapter);
                topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.j
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.addTopicCardAdapter$lambda$2(nVContext, contentModule, view);
                    }
                });
            }
            arrayList.add(topicModuleHorizontalAdapter);
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(topicModuleHorizontalAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void addTopicCardAdapter$lambda$2(NVContext ctx, ContentModule module, View view) {
            kotlin.jvm.internal.t.j(ctx, "$ctx");
            kotlin.jvm.internal.t.j(module, "$module");
            Companion companion = ModuleAdapterFactory.Companion;
            companion.clickShowAllLog(ctx, module, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
            if (kotlin.jvm.internal.t.e(module.moduleType, ContentModule.TYPE_BOOKMARKED_TOPICS)) {
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(ctx, FragmentWrapperActivity.intent(AggregationTopicFragment.class));
            } else {
                companion.showMoreTopic(module, ctx);
            }
        }

        private final List<NVRecyclerViewBaseAdapter> appendMedRecAdapter(NVContext nVContext, List<? extends NVRecyclerViewBaseAdapter> list) {
            ArrayList arrayList = new ArrayList(list);
            arrayList.add(new MedRecAdAdapter(nVContext, getDiscoverScreenAdAppearance()));
            return arrayList;
        }

        private final void clickShowAllLog(NVContext nVContext, ContentModule contentModule, String str) {
            LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(nVContext, ActSemantic.listViewEnter);
            builderClickBuilder.area(contentModule.moduleType);
            builderClickBuilder.extraParam("listViewEnterSource", str);
            ModuleLogUtils.completeModuleExtraInfo(builderClickBuilder, contentModule);
            builderClickBuilder.send();
        }

        public static /* synthetic */ List getModuleAdapterList$default(Companion companion, int i10, NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig, boolean z6, int i11, Object obj) {
            if ((i11 & 16) != 0) {
                z6 = false;
            }
            return companion.getModuleAdapterList(i10, nVContext, contentModule, moduleDisplayConfig, z6);
        }

        private final void jumpToMyCommunityPage(NVContext nVContext) {
            new MasterHelper(nVContext).jumpToMyCommunityPage();
        }

        private final void showMoreChat(ContentModule contentModule, NVContext nVContext) {
            Intent intent = FragmentWrapperActivity.intent(ChatModuleListFramgment.class);
            intent.putExtra(ChatModuleListFramgment.KEY_CONTENT_MODULE, JacksonUtils.writeAsString(contentModule));
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent);
        }

        private final void showMoreCommunity(ArrayList<Community> arrayList, String str, ContentModule contentModule, NVContext nVContext) {
            if (contentModule.userRemovable && contentModule.getTopicId() >= 0) {
                Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
                intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_ID, contentModule.getTopicId());
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent);
                return;
            }
            String string = UUID.randomUUID().toString();
            kotlin.jvm.internal.t.i(string, "toString(...)");
            CommunityListFragment.Companion.addShareCommunityList(string, arrayList != null ? new ArrayList<>(arrayList) : new ArrayList<>(), str);
            Intent intent2 = FragmentWrapperActivity.intent(CommunityListFragment.class);
            intent2.putExtra("KEY_TITLE", contentModule.displayName);
            intent2.putExtra("KEY_PATH", contentModule.dataUrl);
            intent2.putExtra(CommunityListFragment.KEY_SHARE_DATA_SOURCE_ID, string);
            intent2.putExtra(CommunityListFragment.KEY_REFRESH_REPLACE, true);
            intent2.putExtra("_module", JacksonUtils.writeAsString(contentModule));
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent2);
        }

        private final void showMoreTopic(ContentModule contentModule, NVContext nVContext) {
            Intent intent = FragmentWrapperActivity.intent(TopicListFragment.class);
            intent.putExtra("KEY_TITLE", contentModule.displayName);
            intent.putExtra("KEY_PATH", contentModule.dataUrl);
            intent.putExtra("_module", JacksonUtils.writeAsString(contentModule));
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, intent);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
        
            if (r0.equals(com.narvii.topic.model.discover.ContentModule.STYLE_BANNER_SIZE_MEDIUM) == false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0059, code lost:
        
            if (r0.equals(com.narvii.topic.model.discover.ContentModule.STYLE_BANNER_SIZE_TOP) == false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0067, code lost:
        
            if (r0.equals(com.narvii.topic.model.discover.ContentModule.STYLE_GRID_COMMUNITY_CARD) == false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00a8, code lost:
        
            if (r0.equals(com.narvii.topic.model.discover.ContentModule.STYLE_GENERAL_COMMUNITY_CARD) == false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00ab, code lost:
        
            r3 = addCommunityModule(r4, r5, r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x00af, code lost:
        
            if (r7 == false) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
        
            return addAdsBannerAdapter(r3, r4, r5, r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
        
            return r3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
        
            return appendMedRecAdapter(r4, r3);
         */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final List<NVRecyclerViewBaseAdapter> getModuleAdapterList(int i10, @NotNull NVContext ctx, @NotNull ContentModule module, @Nullable ModuleDisplayConfig moduleDisplayConfig, boolean z6) {
            kotlin.jvm.internal.t.j(ctx, "ctx");
            kotlin.jvm.internal.t.j(module, "module");
            String displayStyle = module.getDisplayStyle();
            if (displayStyle != null) {
                switch (displayStyle.hashCode()) {
                    case -2069883215:
                        break;
                    case -1621922569:
                        if (displayStyle.equals(ContentModule.STYLE_GENERAL_TOPIC_CARD)) {
                            return addTopicCardAdapter(ctx, module, moduleDisplayConfig);
                        }
                        break;
                    case -1602183143:
                        if (displayStyle.equals(ContentModule.STYLE_GRID_TOPIC_CARD)) {
                            return addGridTopicAdapter(ctx, module, moduleDisplayConfig);
                        }
                        break;
                    case -1449663308:
                        if (displayStyle.equals(ContentModule.STYLE_HEADERLINE_POST)) {
                            return addHeaderLinePostsAdapter(ctx, module, moduleDisplayConfig);
                        }
                        break;
                    case -152326729:
                        if (displayStyle.equals(ContentModule.STYLE_COMMUNITY_THUMBNAIL_LINE)) {
                            return addCommunityThumbnailAdapter(ctx, module, moduleDisplayConfig);
                        }
                        break;
                    case -136648493:
                        break;
                    case -68617048:
                        break;
                    case 24063810:
                        break;
                    case 432204831:
                        if (displayStyle.equals(ContentModule.STYLE_DISCOVER_TOPICS_BUTTON)) {
                            return addDiscoverTopicButtonAdapter(ctx, module, moduleDisplayConfig);
                        }
                        break;
                    case 1131003839:
                        if (displayStyle.equals(ContentModule.STYLE_CREATE_COMMUNITY_BUTTON)) {
                            return addCreateCommunityButtonAdapter(ctx, module, moduleDisplayConfig);
                        }
                        break;
                    case 1372050288:
                        if (displayStyle.equals(ContentModule.STYLE_GENERAL_CHAT_CARD)) {
                            return addChatCardAdapter(ctx, module, moduleDisplayConfig);
                        }
                        break;
                }
            }
            return new ArrayList();
        }

        private final long getDiscoverScreenAdAppearance() {
            com.google.firebase.remoteconfig.a aVarK = com.google.firebase.remoteconfig.a.k();
            kotlin.jvm.internal.t.i(aVarK, "getInstance(...)");
            aVarK.g();
            return aVarK.m(ModuleAdapterFactory.REMOTE_MED_REC_AD_APPEARANCE);
        }
    }
}
