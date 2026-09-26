.class Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;
.super Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatableTransition"
.end annotation


# instance fields
.field private final mA:Landroid/graphics/drawable/Animatable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$Transition;-><init>(Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$1;)V

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    .line 7
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat$AnimatableTransition;->mA:Landroid/graphics/drawable/Animatable;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 6
    return-void
.end method
