.class final Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/MediaPreEditingActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lcom/narvii/util/dialog/ProgressDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/pre_editing/MediaPreEditingActivity;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->invoke$lambda$0(Lcom/narvii/pre_editing/MediaPreEditingActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/narvii/pre_editing/MediaPreEditingActivity;Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getInputMedia$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/model/Media;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "inputMedia"

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    :cond_0
    iget-wide v0, p1, Lcom/narvii/model/Media;->duration:J

    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    cmp-long p1, v2, v0

    .line 24
    .line 25
    if-gtz p1, :cond_1

    .line 26
    .line 27
    .line 28
    const-wide/32 v2, 0xee48

    .line 29
    .line 30
    cmp-long p1, v0, v2

    .line 31
    .line 32
    if-gez p1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->finish()V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-static {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity;->access$getTrimVideoGenerator$p(Lcom/narvii/pre_editing/MediaPreEditingActivity;)Lcom/narvii/pre_editing/TrimVideoGenerator;

    .line 40
    move-result-object p0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/pre_editing/TrimVideoGenerator;->cancel()V

    .line 44
    :goto_0
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/util/dialog/ProgressDialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->this$0:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    .line 3
    new-instance v2, Lcom/narvii/pre_editing/b;

    invoke-direct {v2, v1}, Lcom/narvii/pre_editing/b;-><init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->invoke()Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
