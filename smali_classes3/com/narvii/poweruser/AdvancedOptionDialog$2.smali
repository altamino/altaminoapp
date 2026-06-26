.class Lcom/narvii/poweruser/AdvancedOptionDialog$2;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 365
    instance-of v0, p1, Lcom/narvii/widget/FlagItemLayout;

    if-eqz v0, :cond_19

    .line 366
    check-cast p1, Lcom/narvii/widget/FlagItemLayout;

    .line 367
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f00a6

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_0

    .line 368
    new-instance p1, Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p1, v0, v1}, Lcom/narvii/poweruser/PowerChatHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 369
    invoke-virtual {p1}, Lcom/narvii/poweruser/PowerChatHelper;->showFeatureDialog()V

    .line 370
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto/16 :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f00b0

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_1

    .line 372
    new-instance p1, Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    invoke-direct {p1, v0, v1}, Lcom/narvii/poweruser/PowerChatHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/ChatThread;)V

    .line 373
    invoke-virtual {p1}, Lcom/narvii/poweruser/PowerChatHelper;->unfeatureChat()V

    .line 374
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto/16 :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f00a5

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_2

    .line 376
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    invoke-direct {p1, v0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 377
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$1;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$1;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->showFeatureDialog(Lcom/narvii/util/Callback;)V

    goto/16 :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f00af

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_3

    .line 384
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Feed;

    invoke-direct {p1, v0, v4}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 385
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$2;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$2;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeed(IJLcom/narvii/util/Callback;)V

    goto/16 :goto_0

    .line 391
    :cond_3
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v4, 0x7f0f06a4

    invoke-static {v0, p1, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    new-instance p1, Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    invoke-direct {p1, v0, v1}, Lcom/narvii/user/feature/FeatureUserHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 393
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$3;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$3;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    invoke-virtual {p1, v0}, Lcom/narvii/user/feature/FeatureUserHelper;->showFeatureDialog(Lcom/narvii/util/Callback;)V

    goto/16 :goto_0

    .line 399
    :cond_4
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v4, 0x7f0f1101

    invoke-static {v0, p1, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    new-instance p1, Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    invoke-direct {p1, v0, v4}, Lcom/narvii/user/feature/FeatureUserHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)V

    .line 401
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$4;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$4;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/narvii/user/feature/FeatureUserHelper;->featureUser(IJLcom/narvii/util/Callback;)V

    goto/16 :goto_0

    .line 407
    :cond_5
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v4, 0x7f0f00b2

    invoke-static {v0, p1, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_6

    .line 408
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v4, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/Feed;

    invoke-direct {p1, v0, v4}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 409
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog$2$5;

    invoke-direct {v0, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$5;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeed(IJLcom/narvii/util/Callback;)V

    goto/16 :goto_0

    .line 415
    :cond_6
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v4, 0x7f0f00aa

    invoke-static {v0, p1, v4}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_7

    .line 416
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/Feed;

    invoke-direct {p1, v0, v3}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    const/4 v0, 0x2

    .line 417
    new-instance v3, Lcom/narvii/poweruser/AdvancedOptionDialog$2$6;

    invoke-direct {v3, p0}, Lcom/narvii/poweruser/AdvancedOptionDialog$2$6;-><init>(Lcom/narvii/poweruser/AdvancedOptionDialog$2;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/narvii/poweruser/PowerFeedHelper;->featureFeed(IJLcom/narvii/util/Callback;)V

    goto/16 :goto_0

    .line 423
    :cond_7
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f00a0

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 424
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    goto/16 :goto_0

    .line 425
    :cond_8
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f00a4

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 426
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    goto/16 :goto_0

    .line 427
    :cond_9
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f009f

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 428
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    goto/16 :goto_0

    .line 429
    :cond_a
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f00a3

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 430
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    goto/16 :goto_0

    .line 431
    :cond_b
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f009c

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 432
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    goto/16 :goto_0

    .line 433
    :cond_c
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f009d

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 434
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$300(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;Z)V

    goto/16 :goto_0

    .line 435
    :cond_d
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f009b

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 436
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ChatMessage;

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$400(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V

    goto/16 :goto_0

    .line 437
    :cond_e
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f009a

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 438
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$500(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    goto/16 :goto_0

    .line 439
    :cond_f
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f00a2

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 440
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$600(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V

    goto/16 :goto_0

    .line 441
    :cond_10
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f009e

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 442
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Comment;

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$700(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V

    goto/16 :goto_0

    .line 443
    :cond_11
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f01b8

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 444
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->submitOfficialCatalog(Lcom/narvii/model/Item;)V

    goto/16 :goto_0

    .line 445
    :cond_12
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f017b

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 446
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 447
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$800(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/poweruser/SendBroadcastHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/poweruser/SendBroadcastHelper;->sendBroadcast(Lcom/narvii/model/NVObject;)V

    goto/16 :goto_0

    .line 448
    :cond_13
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f00a9

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 449
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 450
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$900(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    goto/16 :goto_0

    .line 451
    :cond_14
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f00ac

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 452
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 453
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$1000(Lcom/narvii/poweruser/AdvancedOptionDialog;)V

    goto/16 :goto_0

    .line 454
    :cond_15
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v2, 0x7f0f0098

    invoke-static {v0, p1, v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 455
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Feed;

    invoke-direct {p1, v0, v2}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 456
    invoke-virtual {p1, v1}, Lcom/narvii/poweruser/PowerFeedHelper;->changeBestQuizStatus(Z)V

    .line 457
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 458
    :cond_16
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f00ab

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 459
    new-instance p1, Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Feed;

    invoke-direct {p1, v0, v1}, Lcom/narvii/poweruser/PowerFeedHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;)V

    .line 460
    invoke-virtual {p1, v3}, Lcom/narvii/poweruser/PowerFeedHelper;->changeBestQuizStatus(Z)V

    .line 461
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 462
    :cond_17
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    const v1, 0x7f0f10de

    invoke-static {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/widget/FlagItemLayout;I)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 463
    const-class p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 464
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_18

    .line 465
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thread"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    :cond_18
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0, p1}, Lcom/narvii/app/NVDialog;->startActivity(Landroid/content/Intent;)V

    .line 468
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$2;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_19
    :goto_0
    return-void
.end method
