package com.narvii.story;

import android.content.Intent;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.StoryPostActivity;
import com.narvii.model.Blog;
import com.narvii.model.Scene;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.post.DraftManager;
import com.narvii.scene.StoryPostService;
import com.narvii.scene.helper.SceneUtils;
import com.narvii.scene.model.SceneDraft;
import com.narvii.scene.model.SceneInfo;
import com.narvii.scene.notification.CloseSceneTemplateObject;
import com.narvii.scene.service.SceneDraftHelper;
import com.narvii.services.AutostartServiceProvider;
import com.narvii.story.StoryListFragment;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.text.TextUtils;
import java.io.File;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: StoryPostServiceProvider.kt */
/* loaded from: classes.dex */
public final class StoryPostServiceProvider implements AutostartServiceProvider<StoryPostService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, StoryPostService storyPostService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, StoryPostService storyPostService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, StoryPostService storyPostService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, StoryPostService storyPostService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, StoryPostService storyPostService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public StoryPostService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return new Service(ctx);
    }

    /* compiled from: StoryPostServiceProvider.kt */
    /* loaded from: classes3.dex */
    public static final class Service implements StoryPostService {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Service.class), "draftManager", "getDraftManager()Lcom/narvii/post/DraftManager;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Service.class), "sceneDraftHelper", "getSceneDraftHelper()Lcom/narvii/scene/service/SceneDraftHelper;"))};
        private final Lazy draftManager$delegate;
        private final NVContext nvContext;
        private final Lazy sceneDraftHelper$delegate;

        public final DraftManager getDraftManager() {
            Lazy lazy = this.draftManager$delegate;
            KProperty kProperty = $$delegatedProperties[0];
            return (DraftManager) lazy.getValue();
        }

        public final SceneDraftHelper getSceneDraftHelper() {
            Lazy lazy = this.sceneDraftHelper$delegate;
            KProperty kProperty = $$delegatedProperties[1];
            return (SceneDraftHelper) lazy.getValue();
        }

        public Service(NVContext nvContext) {
            Intrinsics.checkParameterIsNotNull(nvContext, "nvContext");
            this.nvContext = nvContext;
            this.draftManager$delegate = LazyKt__LazyJVMKt.lazy(new Function0<DraftManager>() { // from class: com.narvii.story.StoryPostServiceProvider$Service$draftManager$2
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final DraftManager invoke() {
                    return (DraftManager) this.this$0.nvContext.getService(EntryManager.ENTRY_DRAFT);
                }
            });
            this.sceneDraftHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<SceneDraftHelper>() { // from class: com.narvii.story.StoryPostServiceProvider$Service$sceneDraftHelper$2
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final SceneDraftHelper invoke() {
                    return new SceneDraftHelper(this.this$0.nvContext);
                }
            });
        }

        @Override // com.narvii.scene.StoryPostService
        public void launchStoryPost(SceneInfo sceneInfo, String rootPath, String linkedBlogStr) {
            Intrinsics.checkParameterIsNotNull(sceneInfo, "sceneInfo");
            Intrinsics.checkParameterIsNotNull(rootPath, "rootPath");
            Intrinsics.checkParameterIsNotNull(linkedBlogStr, "linkedBlogStr");
            final Blog blog = (Blog) JacksonUtils.readAs(linkedBlogStr, Blog.class);
            if (blog == null || FileUtils.isEmpty(new File(rootPath))) {
                return;
            }
            final BlogPost blogPost = new BlogPost();
            blogPost.type = 9;
            blogPost.from = BlogPost.FROM_BLOG_PROMOTE;
            blogPost.promotedFrom = blog.blogId;
            blogPost.title = blog.title;
            blogPost.linkDesc = getLinkDesc(blog);
            final String draftId = getDraftManager().createDraft("story", null, blogPost);
            blogPost.sceneDraft = new SceneDraft(draftId);
            SceneDraft sceneDraft = blogPost.sceneDraft;
            Intrinsics.checkExpressionValueIsNotNull(draftId, "draftId");
            sceneDraft.addScene(convertScene(sceneInfo, rootPath, draftId));
            SceneDraftHelper sceneDraftHelper = getSceneDraftHelper();
            SceneDraft sceneDraft2 = blogPost.sceneDraft;
            Intrinsics.checkExpressionValueIsNotNull(sceneDraft2, "post.sceneDraft");
            sceneDraftHelper.correctCoverImage(sceneDraft2, new Function1<SceneDraft, Unit>() { // from class: com.narvii.story.StoryPostServiceProvider$Service$launchStoryPost$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(SceneDraft sceneDraft3) throws Throwable {
                    invoke2(sceneDraft3);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(SceneDraft it) throws Throwable {
                    Intrinsics.checkParameterIsNotNull(it, "it");
                    this.this$0.getDraftManager().savePost(draftId, blogPost);
                    this.this$0.sendNotification(blog);
                    Intent intent = new Intent(this.this$0.nvContext.getContext(), (Class<?>) StoryPostActivity.class);
                    intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(blogPost));
                    intent.putExtra("draftId", draftId);
                    this.this$0.nvContext.startActivity(intent);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void sendNotification(Blog blog) {
            CloseSceneTemplateObject closeSceneTemplateObject = new CloseSceneTemplateObject();
            closeSceneTemplateObject.id = blog.blogId;
            NotificationUtils.sendNotificationIncludeGlobal(this.nvContext, new Notification("new", closeSceneTemplateObject));
        }

        private final String getLinkDesc(Blog blog) {
            String string;
            if (!TextUtils.isEmpty(blog.title)) {
                String str = blog.title;
                Intrinsics.checkExpressionValueIsNotNull(str, "linkedBlog.title");
                return str;
            }
            if (blog.type == 7) {
                string = this.nvContext.getContext().getString(R.string.post_entry_new_image);
            } else {
                string = this.nvContext.getContext().getString(R.string.post_entry_new_link);
            }
            Intrinsics.checkExpressionValueIsNotNull(string, "if(linkedBlog.type == Bl…y_new_link)\n            }");
            return string;
        }

        private final SceneInfo convertScene(SceneInfo sceneInfo, String str, String str2) {
            File newRootDir = getDraftManager().getDir(str2);
            File file = new File(str);
            Intrinsics.checkExpressionValueIsNotNull(newRootDir, "newRootDir");
            String absolutePath = newRootDir.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath, "newRootDir.absolutePath");
            moveFile(file, str, absolutePath);
            String sceneStr = JacksonUtils.writeAsString(sceneInfo);
            Intrinsics.checkExpressionValueIsNotNull(sceneStr, "sceneStr");
            String absolutePath2 = newRootDir.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath2, "newRootDir.absolutePath");
            return (SceneInfo) JacksonUtils.readAs(StringsKt__StringsJVMKt.replace$default(sceneStr, str, absolutePath2, false, 4, null), SceneInfo.class);
        }

        private final void moveFile(File file, String str, String str2) {
            if (file.isDirectory()) {
                String absolutePath = file.getAbsolutePath();
                Intrinsics.checkExpressionValueIsNotNull(absolutePath, "srcFile.absolutePath");
                File file2 = new File(StringsKt__StringsJVMKt.replace$default(absolutePath, str, str2, false, 4, null));
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                File[] fileArrListFiles = file.listFiles();
                Intrinsics.checkExpressionValueIsNotNull(fileArrListFiles, "srcFile.listFiles()");
                for (File it : fileArrListFiles) {
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    moveFile(it, str, str2);
                }
                return;
            }
            String absolutePath2 = file.getAbsolutePath();
            Intrinsics.checkExpressionValueIsNotNull(absolutePath2, "srcFile.absolutePath");
            Utils.moveFile(file, new File(StringsKt__StringsJVMKt.replace$default(absolutePath2, str, str2, false, 4, null)), true);
        }

        @Override // com.narvii.scene.StoryPostService
        public void launchStoryPreview(List<? extends Scene> list) {
            Blog blog = new Blog();
            blog.type = 9;
            blog.sceneList = SceneUtils.getAttachPreviewSceneList(list);
            Intent intentPutExtra = new StoryListFragment.IntentBuilder(blog).autoLoadNextPage(false).build().putExtra(StoryListFragment.KEY_IMMERSION_MODE, true).putExtra(StoryListFragment.KEY_AUTO_LOAD_NEXT_PAGE, false).putExtra("preview", true).putExtra("backDirectly", true);
            Intrinsics.checkExpressionValueIsNotNull(intentPutExtra, "StoryListFragment.Intent…tra(\"backDirectly\", true)");
            new StoryHelper(this.nvContext).openStoryDetailPageInAnotherActivity(null, intentPutExtra);
        }
    }
}
