.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/share/ShareLinkHelper$ShareCallback;


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


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$13;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onShareFailed(I)V
    .locals 0

    return-void
.end method

.method public onShareSuccessful(I)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$13;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    const-string v0, "invitedOneFriend"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->G(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Ljava/lang/String;)V

    .line 8
    return-void
.end method
