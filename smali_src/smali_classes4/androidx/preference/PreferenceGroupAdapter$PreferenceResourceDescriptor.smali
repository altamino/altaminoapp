.class Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceResourceDescriptor"
.end annotation


# instance fields
.field mClassName:Ljava/lang/String;

.field mLayoutResId:I

.field mWidgetLayoutResId:I


# direct methods
.method constructor <init>(Landroidx/preference/Preference;)V
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mClassName:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/preference/Preference;->r()I

    .line 17
    move-result v0

    .line 18
    .line 19
    iput v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/preference/Preference;->C()I

    .line 23
    move-result p1

    .line 24
    .line 25
    iput p1, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;

    .line 9
    .line 10
    iget v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    .line 11
    .line 12
    iget v2, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    .line 17
    .line 18
    iget v2, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mClassName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p1, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mClassName:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    move-result p1

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x20f

    .line 3
    .line 4
    iget v1, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mLayoutResId:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mWidgetLayoutResId:I

    .line 10
    add-int/2addr v0, v1

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$PreferenceResourceDescriptor;->mClassName:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    return v0
.end method
