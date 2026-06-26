.class Lcom/narvii/util/NVToast$1;
.super Ljava/lang/Object;
.source "NVToast.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/NVToast;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/util/NVToast;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/NVToast;


# direct methods
.method constructor <init>(Lcom/narvii/util/NVToast;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/narvii/util/NVToast$1;->this$0:Lcom/narvii/util/NVToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/util/NVToast;Lcom/narvii/util/NVToast;)I
    .locals 0

    .line 169
    invoke-static {p2}, Lcom/narvii/util/NVToast;->access$000(Lcom/narvii/util/NVToast;)F

    move-result p2

    invoke-static {p1}, Lcom/narvii/util/NVToast;->access$000(Lcom/narvii/util/NVToast;)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 166
    check-cast p1, Lcom/narvii/util/NVToast;

    check-cast p2, Lcom/narvii/util/NVToast;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/NVToast$1;->compare(Lcom/narvii/util/NVToast;Lcom/narvii/util/NVToast;)I

    move-result p1

    return p1
.end method
