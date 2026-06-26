.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;
.super Ljava/lang/Object;
.source "MoodBaseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->unlockInvite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/ActionSheetDialog;

.field final synthetic val$shareLink:Lcom/narvii/share/ShareLink;

.field final synthetic val$shareLinkHelper:Lcom/narvii/share/ShareLinkHelper;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/narvii/share/ShareLinkHelper;Lcom/narvii/share/ShareLink;Lcom/narvii/util/dialog/ActionSheetDialog;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    iput-object p2, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$shareLinkHelper:Lcom/narvii/share/ShareLinkHelper;

    iput-object p3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$shareLink:Lcom/narvii/share/ShareLink;

    iput-object p4, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$dialog:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 658
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$shareLinkHelper:Lcom/narvii/share/ShareLinkHelper;

    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$shareLink:Lcom/narvii/share/ShareLink;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/narvii/share/ShareLinkHelper;->share(Lcom/narvii/share/ShareLink;I)V

    .line 659
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$dialog:Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
