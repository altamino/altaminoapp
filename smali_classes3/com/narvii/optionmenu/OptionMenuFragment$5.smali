.class Lcom/narvii/optionmenu/OptionMenuFragment$5;
.super Lcom/narvii/share/BaseShareButtonRepost;
.source "OptionMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/optionmenu/OptionMenuFragment;->shareImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/optionmenu/OptionMenuFragment;


# direct methods
.method constructor <init>(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$5;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-direct {p0, p2}, Lcom/narvii/share/BaseShareButtonRepost;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/narvii/share/SharePayload;)V
    .locals 1

    .line 401
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$5;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v0, "Post Detail Share Bar"

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/optionmenu/OptionMenuFragment$5;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {v0}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$500(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Feed;

    invoke-virtual {p1, v0}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    return-void
.end method
