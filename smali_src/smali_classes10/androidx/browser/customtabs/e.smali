.class public final synthetic Landroidx/browser/customtabs/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/browser/customtabs/EngagementSignalsCallback;

.field public final synthetic b:I

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/e;->a:Landroidx/browser/customtabs/EngagementSignalsCallback;

    iput p2, p0, Landroidx/browser/customtabs/e;->b:I

    iput-object p3, p0, Landroidx/browser/customtabs/e;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/e;->a:Landroidx/browser/customtabs/EngagementSignalsCallback;

    iget v1, p0, Landroidx/browser/customtabs/e;->b:I

    iget-object v2, p0, Landroidx/browser/customtabs/e;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsSession$2;->y1(Landroidx/browser/customtabs/EngagementSignalsCallback;ILandroid/os/Bundle;)V

    return-void
.end method
