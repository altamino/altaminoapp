.class Lcom/narvii/share/elements/ElementUtils$1;
.super Ljava/lang/Object;
.source "ElementUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/share/elements/ElementUtils;->getShareTargetElements(Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/share/elements/BaseElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/share/elements/ElementUtils;


# direct methods
.method constructor <init>(Lcom/narvii/share/elements/ElementUtils;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/narvii/share/elements/ElementUtils$1;->this$0:Lcom/narvii/share/elements/ElementUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/share/elements/BaseElement;Lcom/narvii/share/elements/BaseElement;)I
    .locals 0

    .line 66
    invoke-virtual {p1}, Lcom/narvii/share/elements/BaseElement;->priority()I

    move-result p1

    invoke-virtual {p2}, Lcom/narvii/share/elements/BaseElement;->priority()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 63
    check-cast p1, Lcom/narvii/share/elements/BaseElement;

    check-cast p2, Lcom/narvii/share/elements/BaseElement;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/share/elements/ElementUtils$1;->compare(Lcom/narvii/share/elements/BaseElement;Lcom/narvii/share/elements/BaseElement;)I

    move-result p1

    return p1
.end method
