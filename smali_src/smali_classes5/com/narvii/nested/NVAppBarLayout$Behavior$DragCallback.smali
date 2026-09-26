.class public abstract Lcom/narvii/nested/NVAppBarLayout$Behavior$DragCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/nested/NVAppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DragCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract canDrag(Lcom/narvii/nested/NVAppBarLayout;)Z
    .param p1    # Lcom/narvii/nested/NVAppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
