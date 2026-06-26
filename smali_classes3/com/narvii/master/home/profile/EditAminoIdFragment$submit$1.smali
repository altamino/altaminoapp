.class final Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$1;
.super Ljava/lang/Object;
.source "EditAminoIdFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/EditAminoIdFragment;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$1;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$1;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getChangeAminoIdReq$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$1;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getApi$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/http/ApiService;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/home/profile/EditAminoIdFragment$submit$1;->this$0:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->access$getChangeAminoIdReq$p(Lcom/narvii/master/home/profile/EditAminoIdFragment;)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    :cond_0
    return-void
.end method
