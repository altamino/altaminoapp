package com.narvii.master.home.discover.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import com.narvii.amino.mastes.R;
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
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.storage.PageStorage;
import com.narvii.story.StoryModuleListFragment;
import com.narvii.topic.ModuleDisplayConfig;
import com.narvii.topic.TopicListFragment;
import com.narvii.topic.TopicTabFragment;
import com.narvii.topic.TopicTabFragmentKt;
import com.narvii.topic.adapter.CommunityModuleHorizontalAdapter;
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
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: ModuleAdapterFactory.kt */
/* loaded from: classes3.dex */
public final class ModuleAdapterFactory {
    public static final Companion Companion = new Companion(null);
    public static final String LISTVIEW_ENTER_SOURCE_MORE = "moreButton";
    public static final String LISTVIEW_ENTER_SOURCE_TITLE = "moduleTitle";

    /* compiled from: ModuleAdapterFactory.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
        
            if (r0.equals(com.narvii.topic.model.discover.ContentModule.STYLE_BANNER_SIZE_MEDIUM) != false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0062, code lost:
        
            if (r0.equals(com.narvii.topic.model.discover.ContentModule.STYLE_BANNER_SIZE_TOP) != false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0070, code lost:
        
            if (r0.equals(com.narvii.topic.model.discover.ContentModule.STYLE_GRID_COMMUNITY_CARD) != false) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00c7, code lost:
        
            if (r0.equals(com.narvii.topic.model.discover.ContentModule.STYLE_GENERAL_COMMUNITY_CARD) != false) goto L49;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:?, code lost:
        
            return addAdsBannerAdapter(r3, r4, r5, r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
        
            return addCommunityModule(r4, r5, r6);
         */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
        java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
        	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
        	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<com.narvii.paging.adapter.NVRecyclerViewBaseAdapter> getModuleAdapterList(int r3, com.narvii.app.NVContext r4, com.narvii.topic.model.discover.ContentModule r5, com.narvii.topic.ModuleDisplayConfig r6) {
            /*
                r2 = this;
                java.lang.String r0 = "ctx"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r0)
                java.lang.String r0 = "module"
                kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r5, r0)
                java.lang.String r0 = r5.getDisplayStyle()
                if (r0 != 0) goto L12
                goto Lce
            L12:
                int r1 = r0.hashCode()
                switch(r1) {
                    case -2069883215: goto Lc1;
                    case -1681038202: goto Lb4;
                    case -1621922569: goto La7;
                    case -1602183143: goto L9a;
                    case -1449663308: goto L8d;
                    case -299874883: goto L80;
                    case -152326729: goto L73;
                    case -136648493: goto L6a;
                    case -68617048: goto L5c;
                    case 24063810: goto L53;
                    case 432204831: goto L45;
                    case 1131003839: goto L37;
                    case 1372050288: goto L29;
                    case 1439720112: goto L1b;
                    default: goto L19;
                }
            L19:
                goto Lce
            L1b:
                java.lang.String r3 = "QuizStoryCard"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addStoryCardAdapter(r4, r5, r6)
                goto Ld3
            L29:
                java.lang.String r3 = "GeneralChatCard"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addChatCardAdapter(r4, r5, r6)
                goto Ld3
            L37:
                java.lang.String r3 = "CreateCommunityButton"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addCreateCommunityButtonAdapter(r4, r5, r6)
                goto Ld3
            L45:
                java.lang.String r3 = "DiscoverTopicsButton"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addDiscoverTopicButtonAdapter(r4, r5, r6)
                goto Ld3
            L53:
                java.lang.String r1 = "BannerSizeMedium"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto Lce
                goto L64
            L5c:
                java.lang.String r1 = "BannerSizeTop"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto Lce
            L64:
                java.util.List r3 = r2.addAdsBannerAdapter(r3, r4, r5, r6)
                goto Ld3
            L6a:
                java.lang.String r3 = "GridCommunityCard"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                goto Lc9
            L73:
                java.lang.String r3 = "CommunityThumbnailLine"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addCommunityThumbnailAdapter(r4, r5, r6)
                goto Ld3
            L80:
                java.lang.String r3 = "GeneralStoryCard"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addStoryCardAdapter(r4, r5, r6)
                goto Ld3
            L8d:
                java.lang.String r3 = "HeadlinePost"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addHeaderLinePostsAdapter(r4, r5, r6)
                goto Ld3
            L9a:
                java.lang.String r3 = "GridTopicCard"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addGridTopicAdapter(r4, r5, r6)
                goto Ld3
            La7:
                java.lang.String r3 = "GeneralTopicCard"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addTopicCardAdapter(r4, r5, r6)
                goto Ld3
            Lb4:
                java.lang.String r3 = "PollStoryCard"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
                java.util.List r3 = r2.addStoryCardAdapter(r4, r5, r6)
                goto Ld3
            Lc1:
                java.lang.String r3 = "GeneralCommunityCard"
                boolean r3 = r0.equals(r3)
                if (r3 == 0) goto Lce
            Lc9:
                java.util.List r3 = r2.addCommunityModule(r4, r5, r6)
                goto Ld3
            Lce:
                java.util.ArrayList r3 = new java.util.ArrayList
                r3.<init>()
            Ld3:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.home.discover.adapter.ModuleAdapterFactory.Companion.getModuleAdapterList(int, com.narvii.app.NVContext, com.narvii.topic.model.discover.ContentModule, com.narvii.topic.ModuleDisplayConfig):java.util.List");
        }

        private final List<NVRecyclerViewBaseAdapter> addChatCardAdapter(final NVContext nVContext, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) throws Resources.NotFoundException {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            TopicTitleAdapter topicTitleAdapter = new TopicTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
            Context context = nVContext.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
            context.getResources().getDimensionPixelOffset(R.dimen.discover_cell_padding);
            RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(nVContext, Utils.dpToPxInt(nVContext.getContext(), 15.0f), 0, 0, 0);
            GeneralChatCardAdapter generalChatCardAdapter = new GeneralChatCardAdapter(nVContext, contentModule, moduleDisplayConfig);
            recyclerViewColumnAdapter.setAdapter(generalChatCardAdapter, 2);
            topicTitleAdapter.setHost(recyclerViewColumnAdapter);
            arrayList.add(topicTitleAdapter);
            arrayList.add(recyclerViewColumnAdapter);
            topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addChatCardAdapter$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
                    ModuleAdapterFactory.Companion.showMoreChat(contentModule, nVContext);
                }
            });
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) {
                ShowAllStoryAdapter showAllStoryAdapter = new ShowAllStoryAdapter(nVContext, 4);
                showAllStoryAdapter.setHost(generalChatCardAdapter);
                showAllStoryAdapter.setClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addChatCardAdapter$2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
                        ModuleAdapterFactory.Companion.showMoreChat(contentModule, nVContext);
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
        public final void showMoreChat(ContentModule contentModule, NVContext nVContext) {
            Intent intent = FragmentWrapperActivity.intent(ChatModuleListFramgment.class);
            intent.putExtra(ChatModuleListFramgment.KEY_CONTENT_MODULE, JacksonUtils.writeAsString(contentModule));
            nVContext.startActivity(intent);
        }

        private final List<NVRecyclerViewBaseAdapter> addTopicCardAdapter(final NVContext nVContext, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            TopicModuleHorizontalAdapter topicModuleHorizontalAdapter = new TopicModuleHorizontalAdapter(nVContext, contentModule, moduleDisplayConfig);
            if (Intrinsics.areEqual(contentModule.moduleType, ContentModule.TYPE_TOPIC_BASED_TRENDING_TOPICS) && moduleDisplayConfig != null && moduleDisplayConfig.isTop) {
                TopicTopAdapter topicTopAdapter = new TopicTopAdapter(nVContext, moduleDisplayConfig);
                topicTopAdapter.setHost(topicModuleHorizontalAdapter);
                arrayList.add(topicTopAdapter);
            } else {
                TopicTitleAdapter topicTitleAdapter = new TopicTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
                topicTitleAdapter.setHost(topicModuleHorizontalAdapter);
                arrayList.add(topicTitleAdapter);
                topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addTopicCardAdapter$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
                        if (!Intrinsics.areEqual(contentModule.moduleType, ContentModule.TYPE_BOOKMARKED_TOPICS)) {
                            ModuleAdapterFactory.Companion.showMoreTopic(contentModule, nVContext);
                        } else {
                            nVContext.startActivity(FragmentWrapperActivity.intent(AggregationTopicFragment.class));
                        }
                    }
                });
            }
            arrayList.add(topicModuleHorizontalAdapter);
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(topicModuleHorizontalAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
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
            topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addGridTopicAdapter$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
                    ModuleAdapterFactory.Companion.showMoreTopic(contentModule, nVContext);
                }
            });
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) {
                ShowAllStoryAdapter showAllStoryAdapter = new ShowAllStoryAdapter(nVContext, 6);
                showAllStoryAdapter.setHost(gridTopicCardAdapter);
                arrayList.add(showAllStoryAdapter);
                showAllStoryAdapter.setClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addGridTopicAdapter$2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
                        ModuleAdapterFactory.Companion.showMoreTopic(contentModule, nVContext);
                    }
                });
            }
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(gridTopicCardAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void showMoreTopic(ContentModule contentModule, NVContext nVContext) {
            Intent intent = FragmentWrapperActivity.intent(TopicListFragment.class);
            intent.putExtra("KEY_TITLE", contentModule.displayName);
            intent.putExtra("KEY_PATH", contentModule.dataUrl);
            intent.putExtra("_module", JacksonUtils.writeAsString(contentModule));
            nVContext.startActivity(intent);
        }

        private final List<NVRecyclerViewBaseAdapter> addStoryCardAdapter(final NVContext nVContext, final ContentModule contentModule, final ModuleDisplayConfig moduleDisplayConfig) {
            Log.d("addStoryCardAdapter", contentModule.moduleType + " , " + contentModule.displayName);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            StoryCardTitleAdapter storyCardTitleAdapter = new StoryCardTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
            int iDpToPxInt = Utils.dpToPxInt(nVContext.getContext(), 10.0f);
            RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(nVContext, iDpToPxInt, iDpToPxInt, 0, 0);
            final GeneralStoryCardAdapter generalStoryCardAdapter = new GeneralStoryCardAdapter(nVContext, contentModule, moduleDisplayConfig, true);
            recyclerViewColumnAdapter.setAdapter(generalStoryCardAdapter, 2);
            storyCardTitleAdapter.setHost(generalStoryCardAdapter);
            CardTopAdapter cardTopAdapter = new CardTopAdapter(nVContext, moduleDisplayConfig);
            cardTopAdapter.setHost(generalStoryCardAdapter);
            arrayList.add(storyCardTitleAdapter);
            arrayList.add(cardTopAdapter);
            arrayList.add(recyclerViewColumnAdapter);
            storyCardTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addStoryCardAdapter$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
                    ModuleAdapterFactory.Companion.showMoreStory(contentModule, nVContext, moduleDisplayConfig, generalStoryCardAdapter);
                }
            });
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) {
                GeneralShowAllStoryAdapter generalShowAllStoryAdapter = new GeneralShowAllStoryAdapter(nVContext);
                generalShowAllStoryAdapter.setHost(generalStoryCardAdapter);
                arrayList.add(generalShowAllStoryAdapter);
                generalShowAllStoryAdapter.setClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addStoryCardAdapter$2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
                        ModuleAdapterFactory.Companion.showMoreStory(contentModule, nVContext, moduleDisplayConfig, generalStoryCardAdapter);
                    }
                });
            }
            if (contentModule.isStoryTopic() && moduleDisplayConfig != null && moduleDisplayConfig.showNoStoriesYet) {
                GeneralStoryCardEmptyAdapter generalStoryCardEmptyAdapter = new GeneralStoryCardEmptyAdapter(nVContext);
                generalStoryCardEmptyAdapter.setHost(generalStoryCardAdapter);
                arrayList.add(generalStoryCardEmptyAdapter);
            }
            if (!contentModule.isStoryTopic()) {
                moduleDisplayConfig = null;
            }
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, moduleDisplayConfig);
            cardBottomAdapter.setHost(generalStoryCardAdapter);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void showMoreStory(ContentModule contentModule, NVContext nVContext, ModuleDisplayConfig moduleDisplayConfig, GeneralStoryCardAdapter generalStoryCardAdapter) {
            String str;
            if (contentModule.userRemovable && contentModule.getTopicId() >= 0) {
                Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
                intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_ID, contentModule.getTopicId());
                nVContext.startActivity(intent);
                return;
            }
            Intent intent2 = FragmentWrapperActivity.intent(StoryModuleListFragment.class);
            intent2.putExtra(StoryModuleListFragment.KEY_CONTENT_MODULE, JacksonUtils.writeAsString(contentModule));
            if (moduleDisplayConfig != null && moduleDisplayConfig.isPagingLoad) {
                nVContext.startActivity(intent2);
                return;
            }
            String string = UUID.randomUUID().toString();
            Intrinsics.checkExpressionValueIsNotNull(string, "UUID.randomUUID().toString()");
            if (generalStoryCardAdapter.getDataSource() instanceof PageDataSource) {
                DataSource dataSource = generalStoryCardAdapter.getDataSource();
                if (dataSource == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.paging.source.PageDataSource<*, *>");
                }
                str = ((PageDataSource) dataSource).get_nextPageToken();
            } else {
                str = null;
            }
            PageStorage pageStorage = generalStoryCardAdapter.getDataSource().getPageStorage();
            List dataList = pageStorage != null ? pageStorage.getDataList() : null;
            if (!(dataList instanceof ArrayList)) {
                dataList = null;
            }
            ArrayList arrayList = (ArrayList) dataList;
            StoryModuleListFragment.Companion.addShareStoryList(string, arrayList != null ? new ArrayList<>(arrayList) : new ArrayList<>(), str);
            intent2.putExtra("KEY_REPLACE", true);
            intent2.putExtra("KEY_DATA_SOURCE_ID", string);
            if (str == null) {
                intent2.putExtra(StoryModuleListFragment.KEY_IS_END, true);
            }
            nVContext.startActivity(intent2);
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
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = null;
            final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = null;
            final Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
            ref$ObjectRef3.element = null;
            if (Intrinsics.areEqual(contentModule.style, ContentModule.STYLE_GRID_COMMUNITY_CARD)) {
                ?? communityListModuleAdapter = new CommunityListModuleAdapter(nVContext, contentModule, moduleDisplayConfig);
                Context context = nVContext.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
                RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(nVContext, context.getResources().getDimensionPixelOffset(R.dimen.discover_cell_padding), 0);
                recyclerViewColumnAdapter.setAdapter(communityListModuleAdapter, 3);
                topicTitleAdapter.setHost(recyclerViewColumnAdapter);
                arrayList.add(topicTitleAdapter);
                arrayList.add(recyclerViewColumnAdapter);
                ref$ObjectRef.element = communityListModuleAdapter.getLastPageToken();
                ref$ObjectRef2.element = communityListModuleAdapter.getCommunityList();
                ref$ObjectRef3.element = communityListModuleAdapter;
            } else {
                ?? communityModuleHorizontalAdapter = new CommunityModuleHorizontalAdapter(nVContext, contentModule, moduleDisplayConfig);
                topicTitleAdapter.setHost(communityModuleHorizontalAdapter);
                arrayList.add(topicTitleAdapter);
                arrayList.add(communityModuleHorizontalAdapter);
                ref$ObjectRef.element = communityModuleHorizontalAdapter.getLastPageToken();
                ref$ObjectRef2.element = communityModuleHorizontalAdapter.getCommunityList();
                ref$ObjectRef3.element = communityModuleHorizontalAdapter;
            }
            topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addCommunityModule$1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v12, types: [T, java.lang.String] */
                /* JADX WARN: Type inference failed for: r5v7, types: [T, java.util.ArrayList] */
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
                    T t = ref$ObjectRef3.element;
                    if (((NVRecyclerViewBaseAdapter) t) instanceof CommunityDataSourceCarrier) {
                        ref$ObjectRef2.element = ((CommunityDataSourceCarrier) ((NVRecyclerViewBaseAdapter) t)).getCommunityList();
                        ref$ObjectRef.element = ((CommunityDataSourceCarrier) ((NVRecyclerViewBaseAdapter) ref$ObjectRef3.element)).getLastPageToken();
                    }
                    ModuleAdapterFactory.Companion.showMoreCommunity((ArrayList) ref$ObjectRef2.element, (String) ref$ObjectRef.element, contentModule, nVContext);
                }
            });
            if (moduleDisplayConfig == null || !moduleDisplayConfig.isPagingLoad) {
                ShowAllStoryAdapter showAllStoryAdapter = new ShowAllStoryAdapter(nVContext, 6);
                showAllStoryAdapter.setHost((NVRecyclerViewBaseAdapter) ref$ObjectRef3.element);
                showAllStoryAdapter.setClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addCommunityModule$2
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
                        ModuleAdapterFactory.Companion.showMoreCommunity((ArrayList) ref$ObjectRef2.element, (String) ref$ObjectRef.element, contentModule, nVContext);
                    }
                });
                arrayList.add(showAllStoryAdapter);
            }
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost((NVRecyclerViewBaseAdapter) ref$ObjectRef3.element);
            arrayList.add(cardBottomAdapter);
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void showMoreCommunity(ArrayList<Community> arrayList, String str, ContentModule contentModule, NVContext nVContext) {
            if (contentModule.userRemovable && contentModule.getTopicId() >= 0) {
                Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
                intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_ID, contentModule.getTopicId());
                nVContext.startActivity(intent);
                return;
            }
            String string = UUID.randomUUID().toString();
            Intrinsics.checkExpressionValueIsNotNull(string, "UUID.randomUUID().toString()");
            CommunityListFragment.Companion.addShareCommunityList(string, arrayList != null ? new ArrayList<>(arrayList) : new ArrayList<>(), str);
            Intent intent2 = FragmentWrapperActivity.intent(CommunityListFragment.class);
            intent2.putExtra("KEY_TITLE", contentModule.displayName);
            intent2.putExtra("KEY_PATH", contentModule.dataUrl);
            intent2.putExtra("KEY_DATA_SOURCE_ID", string);
            intent2.putExtra("KEY_REPLACE", true);
            intent2.putExtra("_module", JacksonUtils.writeAsString(contentModule));
            nVContext.startActivity(intent2);
        }

        private final List<NVRecyclerViewBaseAdapter> addMyCommunityModule(final NVContext nVContext, final ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            NVRecyclerViewBaseAdapter myCommunityModuleHorizontalAdapter;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            TopicTitleAdapter topicTitleAdapter = new TopicTitleAdapter(nVContext, contentModule, moduleDisplayConfig, null, 8, null);
            if (Intrinsics.areEqual(contentModule.style, ContentModule.STYLE_GRID_COMMUNITY_CARD)) {
                myCommunityModuleHorizontalAdapter = new MyCommunityListModuleAdapter(nVContext, contentModule, moduleDisplayConfig);
                Context context = nVContext.getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
                RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(nVContext, context.getResources().getDimensionPixelOffset(R.dimen.discover_cell_padding), 0);
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
                showAllStoryAdapter.setClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addMyCommunityModule$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) throws Resources.NotFoundException {
                        ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_MORE);
                        ModuleAdapterFactory.Companion.jumpToMyCommunityPage(nVContext);
                    }
                });
                arrayList.add(showAllStoryAdapter);
            }
            CardBottomAdapter cardBottomAdapter = new CardBottomAdapter(nVContext, null, 2, null);
            cardBottomAdapter.setHost(myCommunityModuleHorizontalAdapter);
            arrayList.add(cardBottomAdapter);
            topicTitleAdapter.setTitleClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.adapter.ModuleAdapterFactory$Companion$addMyCommunityModule$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) throws Resources.NotFoundException {
                    ModuleAdapterFactory.Companion.clickShowAllLog(nVContext, contentModule, ModuleAdapterFactory.LISTVIEW_ENTER_SOURCE_TITLE);
                    ModuleAdapterFactory.Companion.jumpToMyCommunityPage(nVContext);
                }
            });
            return arrayList;
        }

        private final List<NVRecyclerViewBaseAdapter> addAdsBannerAdapter(int i, NVContext nVContext, ContentModule contentModule, ModuleDisplayConfig moduleDisplayConfig) {
            AdsModuleHorizontalAdapter adsModuleHorizontalAdapter;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new ModuleAnchorAdapter(nVContext, contentModule));
            if (Intrinsics.areEqual(contentModule.getDisplayStyle(), ContentModule.STYLE_BANNER_SIZE_MEDIUM)) {
                adsModuleHorizontalAdapter = new AdsModuleHorizontalAdapter(nVContext, contentModule, moduleDisplayConfig);
            } else {
                CardTopAdapter cardTopAdapter = i != 0 ? new CardTopAdapter(nVContext, null, 2, null) : null;
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

        /* JADX INFO: Access modifiers changed from: private */
        public final void jumpToMyCommunityPage(NVContext nVContext) throws Resources.NotFoundException {
            new MasterHelper(nVContext).jumpToMyCommunityPage();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void clickShowAllLog(NVContext nVContext, ContentModule contentModule, String str) {
            LogEvent.Builder builderClickBuilder = LogEvent.clickBuilder(nVContext, ActSemantic.listViewEnter);
            builderClickBuilder.area(contentModule.moduleType);
            builderClickBuilder.extraParam("listViewEnterSource", str);
            ModuleLogUtils.completeModuleExtraInfo(builderClickBuilder, contentModule);
            builderClickBuilder.send();
        }
    }
}
