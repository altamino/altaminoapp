.class final Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "GlobalProfileMediaPickCallback.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback;->doPost(Lcom/narvii/master/home/profile/EditGlobalBackgroundActivity$UserBackgroundPost;Lcom/narvii/app/NVActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $ph$inlined:Lcom/narvii/feed/BackgroundPostHelper;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BackgroundPostHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$$inlined$apply$lambda$1;->$ph$inlined:Lcom/narvii/feed/BackgroundPostHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileMediaPickCallback$doPost$$inlined$apply$lambda$1;->$ph$inlined:Lcom/narvii/feed/BackgroundPostHelper;

    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->cancel()V

    return-void
.end method
