.class Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;->context:Lcom/narvii/app/NVContext;

    .line 6
    return-void
.end method


# virtual methods
.method public getPadding(Lcom/narvii/widget/NVListView;)I
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/widget/NVListView$ActionbarOverlayPadding;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 12
    move-result v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 16
    move-result p1

    .line 17
    :goto_0
    add-int/2addr v0, p1

    .line 18
    return v0

    .line 19
    .line 20
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 32
    move-result p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    return p1
.end method
