.class public final synthetic Lcom/narvii/master/theme/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/theme/MasterThemeFragment;

.field public final synthetic b:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/theme/a;->a:Lcom/narvii/master/theme/MasterThemeFragment;

    iput-object p2, p0, Lcom/narvii/master/theme/a;->b:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/theme/a;->a:Lcom/narvii/master/theme/MasterThemeFragment;

    iget-object v1, p0, Lcom/narvii/master/theme/a;->b:Ljava/lang/Integer;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/narvii/master/theme/MasterThemeFragment;->n(Lcom/narvii/master/theme/MasterThemeFragment;Ljava/lang/Integer;Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    return-void
.end method
