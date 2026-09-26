.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$shareLinkHelper:Lcom/narvii/share/ShareLinkHelper;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$shareLink:Lcom/narvii/share/ShareLink;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$dialog:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$shareLinkHelper:Lcom/narvii/share/ShareLinkHelper;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$shareLink:Lcom/narvii/share/ShareLink;

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/narvii/share/ShareLinkHelper;->share(Lcom/narvii/share/ShareLink;I)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$14;->val$dialog:Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    return-void
.end method
