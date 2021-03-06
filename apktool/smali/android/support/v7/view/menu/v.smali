.class public Landroid/support/v7/view/menu/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/x;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field static final ITEM_LAYOUT:I

.field private static final TAG:Ljava/lang/String; = "MenuPopupHelper"


# instance fields
.field private final mAdapter:Landroid/support/v7/view/menu/w;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Landroid/support/v7/view/menu/i;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/support/v7/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroid/support/v7/view/menu/y;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroid/support/v7/view/menu/v;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/i;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/i;Landroid/view/View;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/i;Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    sget v5, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/i;Landroid/view/View;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/i;Landroid/view/View;ZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/i;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/i;Landroid/view/View;ZII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/menu/v;->mDropDownGravity:I

    iput-object p1, p0, Landroid/support/v7/view/menu/v;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/v;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Landroid/support/v7/view/menu/v;->mMenu:Landroid/support/v7/view/menu/i;

    new-instance v0, Landroid/support/v7/view/menu/w;

    iget-object v1, p0, Landroid/support/v7/view/menu/v;->mMenu:Landroid/support/v7/view/menu/i;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/view/menu/w;-><init>(Landroid/support/v7/view/menu/v;Landroid/support/v7/view/menu/i;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/v;->mAdapter:Landroid/support/v7/view/menu/w;

    iput-boolean p4, p0, Landroid/support/v7/view/menu/v;->mOverflowOnly:Z

    iput p5, p0, Landroid/support/v7/view/menu/v;->mPopupStyleAttr:I

    iput p6, p0, Landroid/support/v7/view/menu/v;->mPopupStyleRes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/v;->mPopupMaxWidth:I

    iput-object p3, p0, Landroid/support/v7/view/menu/v;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/i;->a(Landroid/support/v7/view/menu/x;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/view/menu/v;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/view/menu/v;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/view/menu/v;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/view/menu/v;)Landroid/support/v7/view/menu/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mMenu:Landroid/support/v7/view/menu/i;

    return-object v0
.end method

.method private measureContentWidth()I
    .locals 11

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Landroid/support/v7/view/menu/v;->mAdapter:Landroid/support/v7/view/menu/w;

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    move v5, v0

    move v2, v0

    move-object v4, v3

    move v1, v0

    :goto_0
    if-ge v5, v9, :cond_1

    invoke-interface {v6, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    if-eq v0, v2, :cond_3

    move v2, v0

    move-object v0, v3

    :goto_1
    iget-object v4, p0, Landroid/support/v7/view/menu/v;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v10, p0, Landroid/support/v7/view/menu/v;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v7/view/menu/v;->mMeasureParent:Landroid/view/ViewGroup;

    :cond_0
    iget-object v4, p0, Landroid/support/v7/view/menu/v;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {v6, v5, v0, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v10, p0, Landroid/support/v7/view/menu/v;->mPopupMaxWidth:I

    if-lt v0, v10, :cond_2

    iget v1, p0, Landroid/support/v7/view/menu/v;->mPopupMaxWidth:I

    :cond_1
    return v1

    :cond_2
    if-le v0, v1, :cond_4

    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/i;Landroid/support/v7/view/menu/m;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/i;Landroid/support/v7/view/menu/m;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/v;->mDropDownGravity:I

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/z;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPopup()Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/i;)V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/i;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mMenu:Landroid/support/v7/view/menu/i;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->dismiss()V

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPresenterCallback:Landroid/support/v7/view/menu/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPresenterCallback:Landroid/support/v7/view/menu/y;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/y;->onCloseMenu(Landroid/support/v7/view/menu/i;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mMenu:Landroid/support/v7/view/menu/i;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/i;->close()V

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/v;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v1, p0, Landroid/support/v7/view/menu/v;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mAdapter:Landroid/support/v7/view/menu/w;

    invoke-static {v0}, Landroid/support/v7/view/menu/w;->a(Landroid/support/v7/view/menu/w;)Landroid/support/v7/view/menu/i;

    move-result-object v1

    invoke-virtual {v0, p3}, Landroid/support/v7/view/menu/w;->a(I)Landroid/support/v7/view/menu/m;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/view/menu/i;->a(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->dismiss()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/ad;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/ad;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v3, Landroid/support/v7/view/menu/v;

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/view/menu/v;->mAnchorView:Landroid/view/View;

    invoke-direct {v3, v0, p1, v4}, Landroid/support/v7/view/menu/v;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/i;Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPresenterCallback:Landroid/support/v7/view/menu/y;

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/v;->setCallback(Landroid/support/v7/view/menu/y;)V

    invoke-virtual {p1}, Landroid/support/v7/view/menu/ad;->size()I

    move-result v4

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_3

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/ad;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/v;->setForceShowIcon(Z)V

    invoke-virtual {v3}, Landroid/support/v7/view/menu/v;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPresenterCallback:Landroid/support/v7/view/menu/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPresenterCallback:Landroid/support/v7/view/menu/y;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/y;->onOpenSubMenu(Landroid/support/v7/view/menu/i;)Z

    :cond_0
    :goto_2
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/v;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/y;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/v;->mPresenterCallback:Landroid/support/v7/view/menu/y;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/view/menu/v;->mForceShowIcon:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/view/menu/v;->mDropDownGravity:I

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/view/menu/v;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Landroid/support/v7/widget/ListPopupWindow;

    iget-object v3, p0, Landroid/support/v7/view/menu/v;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v7/view/menu/v;->mPopupStyleAttr:I

    iget v6, p0, Landroid/support/v7/view/menu/v;->mPopupStyleRes:I

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v2, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v2, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v3, p0, Landroid/support/v7/view/menu/v;->mAdapter:Landroid/support/v7/view/menu/w;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    iget-object v2, p0, Landroid/support/v7/view/menu/v;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/support/v7/view/menu/v;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/view/menu/v;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget v2, p0, Landroid/support/v7/view/menu/v;->mDropDownGravity:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ListPopupWindow;->setDropDownGravity(I)V

    iget-boolean v0, p0, Landroid/support/v7/view/menu/v;->mHasContentWidth:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/view/menu/v;->measureContentWidth()I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/v;->mContentWidth:I

    iput-boolean v1, p0, Landroid/support/v7/view/menu/v;->mHasContentWidth:Z

    :cond_2
    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    iget v2, p0, Landroid/support/v7/view/menu/v;->mContentWidth:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mPopup:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    return v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/view/menu/v;->mHasContentWidth:Z

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mAdapter:Landroid/support/v7/view/menu/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/v;->mAdapter:Landroid/support/v7/view/menu/w;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/w;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
