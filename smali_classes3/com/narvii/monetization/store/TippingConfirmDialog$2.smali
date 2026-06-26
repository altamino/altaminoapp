.class Lcom/narvii/monetization/store/TippingConfirmDialog$2;
.super Ljava/lang/Object;
.source "TippingConfirmDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/store/TippingConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/store/TippingConfirmDialog;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$2;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 148
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7fffffff

    .line 152
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$2;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$100(Lcom/narvii/monetization/store/TippingConfirmDialog;)I

    move-result p2

    if-gt p1, p2, :cond_0

    iget-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$2;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    invoke-static {p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->access$200(Lcom/narvii/monetization/store/TippingConfirmDialog;)I

    move-result p2

    if-ge p1, p2, :cond_1

    :cond_0
    const-string p1, ""

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
