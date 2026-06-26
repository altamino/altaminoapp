.class final Lcom/narvii/widget/TextInputLayout$SavedState$1;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/TextInputLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/narvii/widget/TextInputLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/narvii/widget/TextInputLayout$SavedState;
    .locals 0

    const/4 p1, 0x0

    .line 219
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TextInputLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/narvii/widget/TextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/narvii/widget/TextInputLayout$SavedState;
    .locals 2

    .line 214
    new-instance v0, Lcom/narvii/widget/TextInputLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/narvii/widget/TextInputLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/narvii/widget/TextInputLayout$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TextInputLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/narvii/widget/TextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/TextInputLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/narvii/widget/TextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/narvii/widget/TextInputLayout$SavedState;
    .locals 0

    .line 223
    new-array p1, p1, [Lcom/narvii/widget/TextInputLayout$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lcom/narvii/widget/TextInputLayout$SavedState$1;->newArray(I)[Lcom/narvii/widget/TextInputLayout$SavedState;

    move-result-object p1

    return-object p1
.end method
