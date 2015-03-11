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
public class Coachwork
{
	private final IMendixObject coachworkMendixObject;

	private final IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final String entityName = "MyFirstModule.Coachwork";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		Name("Name"),
		Coachwork_CoachworkImage("MyFirstModule.Coachwork_CoachworkImage"),
		Coachwork_Car("MyFirstModule.Coachwork_Car");

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

	public Coachwork(IContext context)
	{
		this(context, Core.instantiate(context, "MyFirstModule.Coachwork"));
	}

	protected Coachwork(IContext context, IMendixObject coachworkMendixObject)
	{
		if (coachworkMendixObject == null)
			throw new IllegalArgumentException("The given object cannot be null.");
		if (!Core.isSubClassOf("MyFirstModule.Coachwork", coachworkMendixObject.getType()))
			throw new IllegalArgumentException("The given object is not a MyFirstModule.Coachwork");

		this.coachworkMendixObject = coachworkMendixObject;
		this.context = context;
	}

	/**
	 * @deprecated Use 'Coachwork.load(IContext, IMendixIdentifier)' instead.
	 */
	@Deprecated
	public static myfirstmodule.proxies.Coachwork initialize(IContext context, IMendixIdentifier mendixIdentifier) throws CoreException
	{
		return myfirstmodule.proxies.Coachwork.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.getSudoContext() can be used to obtain sudo access).
	 */
	public static myfirstmodule.proxies.Coachwork initialize(IContext context, IMendixObject mendixObject)
	{
		return new myfirstmodule.proxies.Coachwork(context, mendixObject);
	}

	public static myfirstmodule.proxies.Coachwork load(IContext context, IMendixIdentifier mendixIdentifier) throws CoreException
	{
		IMendixObject mendixObject = Core.retrieveId(context, mendixIdentifier);
		return myfirstmodule.proxies.Coachwork.initialize(context, mendixObject);
	}

	public static java.util.List<myfirstmodule.proxies.Coachwork> load(IContext context, String xpathConstraint) throws CoreException
	{
		java.util.List<myfirstmodule.proxies.Coachwork> result = new java.util.ArrayList<myfirstmodule.proxies.Coachwork>();
		for (IMendixObject obj : Core.retrieveXPathQuery(context, "//MyFirstModule.Coachwork" + xpathConstraint))
			result.add(myfirstmodule.proxies.Coachwork.initialize(context, obj));
		return result;
	}

	/**
	 * Commit the changes made on this proxy object.
	 */
	public final void commit() throws CoreException
	{
		Core.commit(context, getMendixObject());
	}

	/**
	 * Commit the changes made on this proxy object using the specified context.
	 */
	public final void commit(IContext context) throws CoreException
	{
		Core.commit(context, getMendixObject());
	}

	/**
	 * Delete the object.
	 */
	public final void delete()
	{
		Core.delete(context, getMendixObject());
	}

	/**
	 * Delete the object using the specified context.
	 */
	public final void delete(IContext context)
	{
		Core.delete(context, getMendixObject());
	}
	/**
	 * @return value of Name
	 */
	public final String getName()
	{
		return getName(getContext());
	}

	/**
	 * @param context
	 * @return value of Name
	 */
	public final String getName(IContext context)
	{
		return (String) getMendixObject().getValue(context, MemberNames.Name.toString());
	}

	/**
	 * Set value of Name
	 * @param name
	 */
	public final void setName(String name)
	{
		setName(getContext(), name);
	}

	/**
	 * Set value of Name
	 * @param context
	 * @param name
	 */
	public final void setName(IContext context, String name)
	{
		getMendixObject().setValue(context, MemberNames.Name.toString(), name);
	}

	/**
	 * @return value of Coachwork_CoachworkImage
	 */
	public final myfirstmodule.proxies.CoachworkImage getCoachwork_CoachworkImage() throws CoreException
	{
		return getCoachwork_CoachworkImage(getContext());
	}

	/**
	 * @param context
	 * @return value of Coachwork_CoachworkImage
	 */
	public final myfirstmodule.proxies.CoachworkImage getCoachwork_CoachworkImage(IContext context) throws CoreException
	{
		myfirstmodule.proxies.CoachworkImage result = null;
		IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Coachwork_CoachworkImage.toString());
		if (identifier != null)
			result = myfirstmodule.proxies.CoachworkImage.load(context, identifier);
		return result;
	}

	/**
	 * Set value of Coachwork_CoachworkImage
	 * @param coachwork_coachworkimage
	 */
	public final void setCoachwork_CoachworkImage(myfirstmodule.proxies.CoachworkImage coachwork_coachworkimage)
	{
		setCoachwork_CoachworkImage(getContext(), coachwork_coachworkimage);
	}

	/**
	 * Set value of Coachwork_CoachworkImage
	 * @param context
	 * @param coachwork_coachworkimage
	 */
	public final void setCoachwork_CoachworkImage(IContext context, myfirstmodule.proxies.CoachworkImage coachwork_coachworkimage)
	{
		if (coachwork_coachworkimage == null)
			getMendixObject().setValue(context, MemberNames.Coachwork_CoachworkImage.toString(), null);
		else
			getMendixObject().setValue(context, MemberNames.Coachwork_CoachworkImage.toString(), coachwork_coachworkimage.getMendixObject().getId());
	}

	/**
	 * @return value of Coachwork_Car
	 */
	public final myfirstmodule.proxies.Car getCoachwork_Car() throws CoreException
	{
		return getCoachwork_Car(getContext());
	}

	/**
	 * @param context
	 * @return value of Coachwork_Car
	 */
	public final myfirstmodule.proxies.Car getCoachwork_Car(IContext context) throws CoreException
	{
		myfirstmodule.proxies.Car result = null;
		IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Coachwork_Car.toString());
		if (identifier != null)
			result = myfirstmodule.proxies.Car.load(context, identifier);
		return result;
	}

	/**
	 * Set value of Coachwork_Car
	 * @param coachwork_car
	 */
	public final void setCoachwork_Car(myfirstmodule.proxies.Car coachwork_car)
	{
		setCoachwork_Car(getContext(), coachwork_car);
	}

	/**
	 * Set value of Coachwork_Car
	 * @param context
	 * @param coachwork_car
	 */
	public final void setCoachwork_Car(IContext context, myfirstmodule.proxies.Car coachwork_car)
	{
		if (coachwork_car == null)
			getMendixObject().setValue(context, MemberNames.Coachwork_Car.toString(), null);
		else
			getMendixObject().setValue(context, MemberNames.Coachwork_Car.toString(), coachwork_car.getMendixObject().getId());
	}

	/**
	 * @return the IMendixObject instance of this proxy for use in the Core interface.
	 */
	public final IMendixObject getMendixObject()
	{
		return coachworkMendixObject;
	}

	/**
	 * @return the IContext instance of this proxy, or null if no IContext instance was specified at initialization.
	 */
	public final IContext getContext()
	{
		return context;
	}

	@Override
	public boolean equals(Object obj)
	{
		if (obj == this)
			return true;

		if (obj != null && getClass().equals(obj.getClass()))
		{
			final myfirstmodule.proxies.Coachwork that = (myfirstmodule.proxies.Coachwork) obj;
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
		return "MyFirstModule.Coachwork";
	}

	/**
	 * @return String GUID from this object, format: ID_0000000000
	 * @deprecated Use getMendixObject().getId().toLong() to get a unique identifier for this object.
	 */
	@Deprecated
	public String getGUID()
	{
		return "ID_" + getMendixObject().getId().toLong();
	}
}