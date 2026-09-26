.class public final synthetic Lcom/narvii/wallet/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/billingclient/api/Purchase;

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-static {p1, p2}, Lcom/narvii/wallet/IabUtils;->a(Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/Purchase;)I

    move-result p1

    return p1
.end method
