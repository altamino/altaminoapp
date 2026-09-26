.class Lcom/narvii/monetization/store/TippingConfirmDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$2;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :catch_0
    const p1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result p2

    .line 17
    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$2;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->c(Lcom/narvii/monetization/store/TippingConfirmDialog;)I

    .line 24
    move-result p2

    .line 25
    .line 26
    if-gt p1, p2, :cond_0

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/monetization/store/TippingConfirmDialog$2;->this$0:Lcom/narvii/monetization/store/TippingConfirmDialog;

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/narvii/monetization/store/TippingConfirmDialog;->e(Lcom/narvii/monetization/store/TippingConfirmDialog;)I

    .line 32
    move-result p2

    .line 33
    .line 34
    if-ge p1, p2, :cond_1

    .line 35
    .line 36
    :cond_0
    const-string p1, ""

    .line 37
    return-object p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method
