.class public final synthetic Lcom/narvii/nested/-$$Lambda$NVAppBarLayout$fDv-7dIdXG9D3tIS55W4QxYUvFY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/narvii/nested/-$$Lambda$NVAppBarLayout$fDv-7dIdXG9D3tIS55W4QxYUvFY;->f$0:Z

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/nested/-$$Lambda$NVAppBarLayout$fDv-7dIdXG9D3tIS55W4QxYUvFY;->f$0:Z

    check-cast p1, Lcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;

    invoke-static {v0, p1}, Lcom/narvii/nested/NVAppBarLayout;->lambda$setCollapsedState$1(ZLcom/narvii/nested/NVAppBarLayout$CollapseStatusChangeListener;)V

    return-void
.end method
