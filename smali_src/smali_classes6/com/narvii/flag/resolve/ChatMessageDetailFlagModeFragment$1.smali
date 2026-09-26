.class Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

.field final synthetic val$fMedia:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;Lcom/narvii/model/Media;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->val$fMedia:Lcom/narvii/model/Media;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->val$fMedia:Lcom/narvii/model/Media;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    const-class v2, Lcom/narvii/media/MediaGalleryActivity;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    const-string v1, "list"

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 38
    return-void
.end method
