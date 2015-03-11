// This file was generated by Mendix Business Modeler.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package myfirstmodule.proxies;

import com.mendix.core.Core;
import com.mendix.core.CoreException;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.systemwideinterfaces.core.IMendixIdentifier;
import com.mendix.systemwideinterfaces.core.IMendixObject;

/**
 * 
 */
public class CarImage extends system.proxies.Image
{
	/**
	 * Internal name of this entity
	 */
	public static final String entityName = "MyFirstModule.CarImage";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		PublicThumbnailPath("PublicThumbnailPath"),
		FileID("FileID"),
		Name("Name"),
		DeleteAfterDownload("DeleteAfterDownload"),
		Contents("Contents"),
		HasContents("HasContents"),
		Car_CarImage("MyFirstModule.Car_CarImage");

		private String metaName;

		MemberNames(String s)
		{
			metaName = s;
		}

		@Override
		public String toString()
		{
			return metaName;
		}
	}

	public CarImage(IContext context)
	{
		this(context, Core.instantiate(context, "MyFirstModule.CarImage"));
	}

	protected CarImage(IContext context, IMendixObject carImageMendixObject)
	{
		super(context, carImageMendixObject);
		if (!Core.isSubClassOf("MyFirstModule.CarImage", carImageMendixObject.getType()))
			throw new IllegalArgumentException("The given object is not a MyFirstModule.CarImage");
	}

	/**
	 * @deprecated Use 'CarImage.load(IContext, IMendixIdentifier)' instead.
	 */
	@Deprecated
	public static myfirstmodule.proxies.CarImage initialize(IContext context, IMendixIdentifier mendixIdentifier) throws CoreException
	{
		return myfirstmodule.proxies.CarImage.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.getSudoContext() can be used to obtain sudo access).
	 */
	public static myfirstmodule.proxies.CarImage initialize(IContext context, IMendixObject mendixObject)
	{
		return new myfirstmodule.proxies.CarImage(context, mendixObject);
	}

	public static myfirstmodule.proxies.CarImage load(IContext context, IMendixIdentifier mendixIdentifier) throws CoreException
	{
		IMendixObject mendixObject = Core.retrieveId(context, mendixIdentifier);
		return myfirstmodule.proxies.CarImage.initialize(context, mendixObject);
	}

	public static java.util.List<myfirstmodule.proxies.CarImage> load(IContext context, String xpathConstraint) throws CoreException
	{
		java.util.List<myfirstmodule.proxies.CarImage> result = new java.util.ArrayList<myfirstmodule.proxies.CarImage>();
		for (IMendixObject obj : Core.retrieveXPathQuery(context, "//MyFirstModule.CarImage" + xpathConstraint))
			result.add(myfirstmodule.proxies.CarImage.initialize(context, obj));
		return result;
	}

	/**
	 * @return value of Car_CarImage
	 */
	public final myfirstmodule.proxies.Car getCar_CarImage() throws CoreException
	{
		return getCar_CarImage(getContext());
	}

	/**
	 * @param context
	 * @return value of Car_CarImage
	 */
	public final myfirstmodule.proxies.Car getCar_CarImage(IContext context) throws CoreException
	{
		myfirstmodule.proxies.Car result = null;
		IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Car_CarImage.toString());
		if (identifier != null)
			result = myfirstmodule.proxies.Car.load(context, identifier);
		return result;
	}

	/**
	 * Set value of Car_CarImage
	 * @param car_carimage
	 */
	public final void setCar_CarImage(myfirstmodule.proxies.Car car_carimage)
	{
		setCar_CarImage(getContext(), car_carimage);
	}

	/**
	 * Set value of Car_CarImage
	 * @param context
	 * @param car_carimage
	 */
	public final void setCar_CarImage(IContext context, myfirstmodule.proxies.Car car_carimage)
	{
		if (car_carimage == null)
			getMendixObject().setValue(context, MemberNames.Car_CarImage.toString(), null);
		else
			getMendixObject().setValue(context, MemberNames.Car_CarImage.toString(), car_carimage.getMendixObject().getId());
	}

	@Override
	public boolean equals(Object obj)
	{
		if (obj == this)
			return true;

		if (obj != null && getClass().equals(obj.getClass()))
		{
			final myfirstmodule.proxies.CarImage that = (myfirstmodule.proxies.CarImage) obj;
			return getMendixObject().equals(that.getMendixObject());
		}
		return false;
	}

	@Override
	public int hashCode()
	{
		return getMendixObject().hashCode();
	}

	/**
	 * @return String name of this class
	 */
	public static String getType()
	{
		return "MyFirstModule.CarImage";
	}

	/**
	 * @return String GUID from this object, format: ID_0000000000
	 * @deprecated Use getMendixObject().getId().toLong() to get a unique identifier for this object.
	 */
	@Override
	@Deprecated
	public String getGUID()
	{
		return "ID_" + getMendixObject().getId().toLong();
	}
}