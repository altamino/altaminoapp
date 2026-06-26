.class final Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "EditThreadAnnouncementFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $announcement$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    iput-object p2, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$1;->$announcement$inlined:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$1;->this$0:Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;

    iget-object v0, p0, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment$submit$$inlined$apply$lambda$1;->$announcement$inlined:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;->access$sendRequest(Lcom/narvii/chat/detail/EditThreadAnnouncementFragment;ZLjava/lang/String;)V

    return-void
.end method
