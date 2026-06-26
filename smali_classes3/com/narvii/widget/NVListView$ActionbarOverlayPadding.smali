.class Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;
.super Ljava/lang/Object;
.source "NVListView.java"

# interfaces
.implements Lcom/narvii/widget/NVListView$ListPaddingProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/NVListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionbarOverlayPadding"
.end annotation


# instance fields
.field context:Lcom/narvii/app/NVContext;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;->context:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public getPadding(Lcom/narvii/widget/NVListView;)I
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;->context:Lcom/narvii/app/NVContext;

    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 84
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    return v0

    .line 85
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    .line 86
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 87
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v0

    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
