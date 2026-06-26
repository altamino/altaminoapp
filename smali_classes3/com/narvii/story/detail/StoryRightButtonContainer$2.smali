.class Lcom/narvii/story/detail/StoryRightButtonContainer$2;
.super Ljava/lang/Object;
.source "StoryRightButtonContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryRightButtonContainer;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

.field final synthetic val$ops:[I


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryRightButtonContainer;[I)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    iput-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->val$ops:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->val$ops:[I

    aget p1, p1, p2

    const-string p2, "MoreArea"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 279
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 280
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$300(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->share:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 281
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$400(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/story/IStoryShareListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 282
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$400(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/story/IStoryShareListener;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/narvii/story/IStoryShareListener;->onShareStory(Lcom/narvii/model/Blog;)V

    goto/16 :goto_1

    .line 315
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$300(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->repost:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 318
    :cond_0
    new-instance p1, Lcom/narvii/story/detail/StoryFeedHelper;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$500(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/story/detail/StoryFeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p1, p2}, Lcom/narvii/story/detail/StoryFeedHelper;->source(Ljava/lang/String;)Lcom/narvii/story/detail/StoryFeedHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/story/detail/StoryFeedHelper;->repost(Lcom/narvii/model/Feed;)V

    goto/16 :goto_1

    .line 322
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$300(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->flag:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 323
    new-instance p1, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$500(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    goto/16 :goto_1

    .line 302
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$300(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->edit:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 303
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/paging/PageViewUtils;->getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;

    move-result-object p1

    .line 304
    new-instance p2, Lcom/narvii/story/detail/StoryFeedHelper;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$500(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/app/NVContext;

    move-result-object p1

    :goto_0
    invoke-direct {p2, p1}, Lcom/narvii/story/detail/StoryFeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 305
    sget-object p1, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    iput-object p1, p2, Lcom/narvii/story/detail/StoryFeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 306
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/story/detail/StoryFeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    goto/16 :goto_1

    .line 310
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$300(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 311
    new-instance p1, Lcom/narvii/story/detail/StoryFeedHelper;

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$500(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/story/detail/StoryFeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/narvii/story/detail/StoryFeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    goto :goto_1

    .line 288
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 289
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$300(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object p2, Lcom/narvii/logging/ActSemantic;->copyLink:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, p2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 291
    :cond_2
    new-instance p1, Lcom/narvii/share/ShareViewHelper;

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$500(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/share/ShareViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 292
    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/share/ShareViewHelper;->copyLink(Lcom/narvii/model/NVObject;)V

    goto :goto_1

    .line 296
    :sswitch_6
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 297
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$300(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    sget-object v0, Lcom/narvii/logging/ActSemantic;->save:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 299
    :cond_3
    iget-object p1, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-virtual {p1, p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->bookmark(Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :sswitch_7
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$500(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/story/detail/StoryRightButtonContainer$2;->this$0:Lcom/narvii/story/detail/StoryRightButtonContainer;

    invoke-static {p2}, Lcom/narvii/story/detail/StoryRightButtonContainer;->access$200(Lcom/narvii/story/detail/StoryRightButtonContainer;)Lcom/narvii/model/Blog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0f0094 -> :sswitch_7
        0x7f0f0170 -> :sswitch_6
        0x7f0f02f5 -> :sswitch_5
        0x7f0f0348 -> :sswitch_4
        0x7f0f03cd -> :sswitch_3
        0x7f0f06d5 -> :sswitch_2
        0x7f0f0ee0 -> :sswitch_1
        0x7f0f0fa2 -> :sswitch_0
    .end sparse-switch
.end method
