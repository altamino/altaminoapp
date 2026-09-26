.class public final Landroidx/palette/graphics/Target$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mTarget:Landroidx/palette/graphics/Target;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0}, Landroidx/palette/graphics/Target;-><init>()V

    iput-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    return-void
.end method

.method public constructor <init>(Landroidx/palette/graphics/Target;)V
    .locals 1
    .param p1    # Landroidx/palette/graphics/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroidx/palette/graphics/Target;

    invoke-direct {v0, p1}, Landroidx/palette/graphics/Target;-><init>(Landroidx/palette/graphics/Target;)V

    iput-object v0, p0, Landroidx/palette/graphics/Target$Builder;->mTarget:Landroidx/palette/graphics/Target;

    return-void
.end method
